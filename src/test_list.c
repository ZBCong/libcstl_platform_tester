#include <cstl/clist.h>


void test_list()
{
    printf("\ntest_list() begin-------------------------\n");
    list_t* list = create_list(int);
    list_init(list);

    int i = 0;
    for (i = 0; i < 10; i++){
        list_push_back(list, rand() % 64);
    }

    iterator_t iter;
    for (iter = list_begin(list); !iterator_equal(iter, list_end(list)); iter = iterator_next(iter)){
        printf("%d\t", *(int *)iterator_get_pointer(iter));
    }

    list_destroy(list);
    printf("\ntest_list() finish-------------------------\n");
}
