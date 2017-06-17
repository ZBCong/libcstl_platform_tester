#include <stdio.h>
#include <stdlib.h>
#include <cstl/cvector.h>
#include <cstl/calgorithm.h>

void value_greater(const void *cpv_first, const void *cpv_second, void *pv_output)
{
    if (*(int *)cpv_first > *(int *)cpv_second){
        *(bool_t *)pv_output = true;
    }else{
        *(bool_t *)pv_output = false;
    }
}

void test_vector()
{
    iterator_t iter;
    int i = 0;
    vector_t *vec = create_vector(int);
    vector_init(vec);

    for (i = 0; i < 10; i++){
        vector_push_back(vec, rand() % 64);
    }

    printf("\ntest_vector begin\n");
    for (iter = vector_begin(vec); !iterator_equal(iter, vector_end(vec)); iter = iterator_next(iter)) {
        printf("%d\t", *(int *)iterator_get_pointer(iter));
    }

    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }

    algo_sort_if(vector_begin(vec), vector_end(vec), value_greater);
    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }

    algo_sort(vector_begin(vec), vector_end(vec));
    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }
    printf("\ntest_vector begin\n");

    vector_destroy(vec);
}
