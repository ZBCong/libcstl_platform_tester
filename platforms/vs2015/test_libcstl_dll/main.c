#include "cstl/cvector.h"

#pragma comment(lib,"libcstl.lib")

void main() {
    iterator_t iter;
    int i = 0;
    vector_t *vec = create_vector(int);
    vector_init(vec);

    for (i = 0; i < 10; i++) {
        vector_push_back(vec, rand() % 64);
    }

    printf("\ntest_vector begin\n");
    for (iter = vector_begin(vec); !iterator_equal(iter, vector_end(vec)); iter = iterator_next(iter)) {
        printf("%d\t", *(int *)iterator_get_pointer(iter));
    }

    for (i = 0; i < 10; i++) {
        printf("%d\t", *(int *)vector_at(vec, i));
    }

    vector_destroy(vec);
}