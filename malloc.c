#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>

// memory block node in linked list
typedef struct block block;
struct block{
    //void* ptr;      // Memory pointer
    size_t size;    // Size of the memory block
    int free;       // 1 if it is free
    struct block* prev;
    struct block* next;
};

#define BLOCK_SIZE sizeof(block)

block *list_head = NULL;
block *list_tail = NULL;

void free(void *ptr){
    if(ptr == NULL) return;

    block* block_ptr = (block*)ptr - 1;
    block_ptr->free = 1;

    //Merge with following block
    if(block_ptr->next != NULL && block_ptr->next->free){
        block_ptr->size = block_ptr->size + BLOCK_SIZE + block_ptr->next->size;
        if(block_ptr->next->next != NULL){
            block_ptr->next->next->prev =block_ptr;
        }
        block_ptr->next = block_ptr->next->next;
    }

    //Merge with previous block
    if(block_ptr->prev != NULL && block_ptr->prev->free){
        block* prev_ptr = block_ptr->prev;
        prev_ptr->size = prev_ptr->size + BLOCK_SIZE + block_ptr->size;
        if(prev_ptr->next->next != NULL){
            prev_ptr->next->next->prev =prev_ptr;
        }
        prev_ptr->next = prev_ptr->next->next;
    }

}

void *find_free_block(size_t size){
    block* ptr = list_head;
    while(ptr != NULL){
        if(ptr->free && size <= ptr->size){
            ptr->free = 0;
            return ptr;
        }
        ptr = ptr->next;
    }
    return NULL;
}


void * malloc(size_t size){
    void * result = NULL;

    if(size == 0) return NULL;

    if(list_head != NULL){
        result = find_free_block(size);
    }

    if(result != NULL){
        return (block*)result + 1;
    }else{
        result = sbrk(0);
        int new_size;
        if(size % 8 == 0){
            new_size = BLOCK_SIZE + size;
        }else{
            new_size = BLOCK_SIZE + (size/8 + 1)*8;
        }

        sbrk(new_size);
        if(sbrk(0) == result) {
            errno = ENOMEM;
            return NULL;
        }
        struct block* new_block = result;
        new_block->size = new_size - BLOCK_SIZE; 
        new_block->prev = list_tail;
        new_block->next = NULL; 
        new_block->free = 0;

        if(list_tail != NULL){
            list_tail->next = new_block;
        }
        
        list_tail= new_block;

        if(list_head == NULL) list_head = new_block;
    }

    return (block*)result + 1;;
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

    block* block_ptr = (block*)ptr - 1;

    if(size%8 != 0){
        size = (size/8 + 1)*8;
    }

    size_t old_size = block_ptr->size;
    if(old_size <= size){
        return ptr;
    }

    void* new_ptr = malloc(size);
    if(new_ptr == NULL){
        return NULL;
    }else{
        memcpy(new_ptr, ptr, old_size); // Moving the data to the new memory block
        free(ptr);
        
        return new_ptr;
    }
}

