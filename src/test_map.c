
#include <cstl/cmap.h>
#include <cstl/cutility.h>

int test_map() {/* multimap container for int/c-string value */
    multimap_t* pmmap_coll = create_multimap(int, int);
    multimap_iterator_t it_pos;
    pair_t* ppair_elem = create_pair(int, int);
    if (pmmap_coll == NULL || ppair_elem == NULL) {
        return -1;
    }
    multimap_init(pmmap_coll);
    pair_init(ppair_elem);
    /*
    * insert some elements in arbitray order
    * - a value with key 1 gets inserted twice
    */
    pair_make(ppair_elem, 5, 50);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 2, 20);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 1, 10);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 4, 40);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 6, 60);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 1, 10);
    multimap_insert(pmmap_coll, ppair_elem);
    pair_make(ppair_elem, 3, 30);
    multimap_insert(pmmap_coll, ppair_elem);
    /*
    * print all element values
    * - iterate over all elements
    * - element member second is value
    */

    printf("\ntest_map begin\n");
    for (it_pos = multimap_begin(pmmap_coll);
        !iterator_equal(it_pos, multimap_end(pmmap_coll));
        it_pos = iterator_next(it_pos)) {
        printf("%d ", *(int*)pair_second(iterator_get_pointer(it_pos)));
    }
    printf("\ntest_map end\n");
    multimap_destroy(pmmap_coll);
    pair_destroy(ppair_elem);
    return 0;
}
