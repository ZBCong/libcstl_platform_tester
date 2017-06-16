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
    printf("\ntest_vector() begin-------------------------\n");
    // 创建,初始化
    vector_t *vec = create_vector(int);
    vector_init(vec);

    // 赋值
    int i = 0;
    for (i = 0; i < 10; i++){
        vector_push_back(vec, rand() % 64);
    }

    // 遍历-迭代器
    iterator_t iter;
    for (iter = vector_begin(vec); !iterator_equal(iter, vector_end(vec)); iter = iterator_next(iter)){
        printf("%d\t", *(int *)iterator_get_pointer(iter));
    }
    printf("\n-------------------------\n");

    // 遍历-下标
    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }
    printf("\n-------------------------\n");

    // 调用算法
    algo_sort_if(vector_begin(vec), vector_end(vec), value_greater);
    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }
    printf("\n-------------------------\n");

    algo_sort(vector_begin(vec), vector_end(vec));
    for (i = 0; i < 10; i++){
        printf("%d\t", *(int *)vector_at(vec, i));
    }
    printf("\n-------------------------\n");

    // 释放
    vector_destroy(vec);
    printf("\ntest_vector() finish-------------------------\n");
}
