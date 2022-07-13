#include "malloc.c"

//#define malloc(_x) ll_malloc((_x))
//#define free(_x) ll_free((_x))
//#define calloc(_x) ll_calloc((_x))
//#define realloc(_x) ll_realloc((_x))

int main(){
    printf("Test\n");
    char* ptr = malloc(100);
    char* ptr2 = malloc(100);
    if(ptr == NULL) printf("NULL ptr\n");
    strcpy(ptr,"TEST");
    strcpy(ptr2,"TEST");
    //printf("<%s>\n", ptr);

    free(ptr);
    printf("Free\n");

    printf("Calloc: \n");
    ptr = calloc(10, 3);
    if(ptr == NULL) printf("NULL ptr\n");

    char *new_ptr = realloc(ptr, 100);
    if(new_ptr == NULL) printf("NULL ptr\n");

    strcpy(new_ptr,"TEST");
    printf("<%s>\n", new_ptr);

    return 0;
}