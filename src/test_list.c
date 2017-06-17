#include <cstl/clist.h>


void test_list()
{
    iterator_t iter;
    int i = 0;
    list_t* list = create_list(int);
    list_init(list);

    for (i = 0; i < 10; i++){
        list_push_back(list, rand() % 64);
    }

    printf("\ntest_list begin\n");
    for (iter = list_begin(list); !iterator_equal(iter, list_end(list)); iter = iterator_next(iter)){
        printf("%d\t", *(int *)iterator_get_pointer(iter));
    }
    printf("\ntest_list end\n");

    list_destroy(list);
}
