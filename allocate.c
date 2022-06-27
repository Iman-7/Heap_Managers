#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>

//#define malloc(_x) ll_malloc((_x))
//#define free(_x) ll_free((_x))
//#define calloc(_x) ll_calloc((_x))
//#define realloc(_x) ll_realloc((_x))

// memory block node in linked list
struct block{
    void* ptr;      // Memory pointer
    size_t size;    // Size of the memory block
    struct block* prev;
    struct block* next;
};

// Linked list of free blocks in memory
static struct block free_list_head = {NULL, 0, NULL, NULL};    

// Linked list of memory blocks allocated by malloc/calloc/realloc
static struct block utilized_list_head = {NULL, 0, NULL, NULL};

void free(void *ptr){
    if(ptr == NULL) return;

    struct block* itr = &utilized_list_head; // Utilized linked list pointer
    while(itr != NULL){
        if(ptr == itr->ptr){
            break;  // Breaks when the memory to be freed is found
        }
        itr = itr->next;
    }

    if(itr != NULL){
        // Removing block from utilized list
        itr->prev->next = itr->next;
        if(itr->next != NULL) itr->next->prev = itr->prev;

        // Adding block to free list
        struct block* free_itr = &free_list_head;
        while(free_itr != NULL){
            if(free_itr->ptr > itr->ptr){   //Finding location to insert the block
                break;
            }

            if(free_itr->next == NULL){ // Insert block at the end of the list
                break;
            }
            free_itr = free_itr->next;
        }

        //Either add at the end of the list or merge with the last block
        if(free_itr->ptr < itr->ptr){ 
            if(free_itr->ptr + free_itr->size == itr->ptr - 32){ //Merging
                free_itr->size = free_itr->size + itr->size + 32;
            }else{
                free_itr->next = itr;
                itr->prev = free_itr;
                itr->next = NULL;
            }
        }
        //free_itr points to the first block with address bigger than the one we are freeing
        else{ 
            // Check merging with the previous block
            if(free_itr->prev->ptr + free_itr->prev->size == itr->ptr - 32){ //Merging
                free_itr->prev->size = free_itr->prev->size + itr->size +32;
            }
            // Check merging with the next block
            else if(itr->ptr + itr->size == free_itr->ptr - 32){
               itr->size = free_itr->size + itr->size + 32;
               free_itr->prev->next = itr;
               itr->prev = free_itr->prev;
               itr->next = free_itr->next;
               if(free_itr->next != NULL) free_itr->next->prev = itr;
            }
            else{ // Insert in the middle of the list
                free_itr->prev->next = itr;
                itr->prev = free_itr->prev;
                itr->next = free_itr;
                free_itr->prev = itr;
            } 

        }

        free_itr = NULL;

    } 
    itr = NULL;

}

void insert_utilized(struct block* p){
    if(utilized_list_head.next != NULL){
        p->next = utilized_list_head.next;
        utilized_list_head.next->prev = p;
    }
    utilized_list_head.next = p;
    p->prev = &utilized_list_head;
}

void * malloc(size_t size){
    //printf("Allocating using malloc\n");
    struct block* list_itr = &free_list_head;
    void * result = NULL;

    if(size == 0) return result;

    while(list_itr != NULL){
        if(size <= list_itr->size){
            if(size == list_itr->size){
                result = list_itr->ptr;
                list_itr->prev->next = list_itr->next;
                if(list_itr->next != NULL) list_itr->next->prev = list_itr->prev;
                insert_utilized(list_itr);
            }else if(size+32 < list_itr->size){
                list_itr->size = list_itr->size - size - 32;
                result = list_itr->ptr;
                list_itr->ptr = list_itr->ptr + size + 32;
                //struct block new_block = {result, size, NULL, NULL};
                struct block* new_block = result;
                new_block->ptr = result + 32; 
                new_block->size = size; 
                new_block->next = NULL; 
                new_block->prev = NULL;
                insert_utilized(new_block);
            }
            break;
        }
        list_itr = list_itr->next;
    }

    if(result == NULL){
        result = sbrk(0);
        sbrk(size + 32);
        if(sbrk(0) == result) {
            errno = ENOMEM;
            return NULL;
        }
        //struct block new_block = {result, size, NULL, NULL};
        //*result = {result + 32, size, NULL, NULL};
        struct block* new_block = result;
        new_block->ptr = result + 32; 
        new_block->size = size; 
        new_block->next = NULL; 
        new_block->prev = NULL;
        insert_utilized(new_block);
    }

    return result + 32;
}

void * calloc(size_t nelem, size_t elsize){
    size_t total_size = nelem * elsize;
    void * ptr = malloc(total_size);
    if(ptr == NULL) {
        return ptr;
    }
    
    
    return memset(ptr, 0, total_size);
}

void * realloc(void * ptr, size_t size){
    if(ptr == NULL) return malloc(size);
    if(size == 0) {
        free(ptr);
        return ptr;
    }

    struct block* itr = &utilized_list_head; // Utilized linked list pointer
    while(itr != NULL){
        if(ptr == itr->ptr){
            break;  // Breaks when the memory to be reallocated is found
        }
        itr = itr->next;
    }

    size_t old_size = itr->size;
    if(size <= old_size){ // If new size is smaller than or equal, no need to move memory
        itr->size = size;
        return ptr;
    }else{
        void *new_ptr = malloc(size); // Pointer to new memory block with new size
        if(new_ptr == NULL){
            return NULL;
        }
        
        memcpy(new_ptr, ptr, old_size); // Moving the data to the new memory block
        free(ptr);
        
        return new_ptr;
    }
}

