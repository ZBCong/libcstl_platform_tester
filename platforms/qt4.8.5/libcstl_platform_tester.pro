QT += core
QT -= gui

TARGET = libcstl_platform_tester
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

INCLUDEPATH += ../../3rdparty/libcstl-2.3.0 \
    ../../src \
    ../../3rdparty/CUnit-2.1-3/CUnit/Headers

SOURCES += main.cpp \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_mutating.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_mutating_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_mutating_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_nonmutating.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_nonmutating_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_sorting.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_sorting_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_sorting_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_alloc.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_alloc_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_avl_tree.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_avl_tree_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_avl_tree_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_avl_tree_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_basic_string.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_basic_string_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_basic_string_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_basic_string_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_deque.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_deque_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_deque_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_deque_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_function.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_function_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_map.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_map_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_map_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_map_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multimap.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multimap_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multimap_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multimap_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multiset.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multiset_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multiset_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multiset_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_set.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_set_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_set_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_set_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hashtable.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hashtable_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hashtable_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hashtable_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_heap.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_heap_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_iterator_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_list.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_list_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_list_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_list_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_map.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_map_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_map_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_map_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multimap.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multimap_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multimap_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multimap_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multiset.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multiset_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multiset_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multiset_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_numeric.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_numeric_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_pair.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_pair_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_pair_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_priority_queue.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_priority_queue_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_queue.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_queue_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_rb_tree.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_rb_tree_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_rb_tree_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_rb_tree_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_set.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_set_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_set_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_set_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_slist.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_slist_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_slist_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_slist_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_stack.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_stack_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_string.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_string_private.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_builtin.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_parse.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_vector.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_vector_aux.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_vector_iterator.c \
    ../../3rdparty/libcstl-2.3.0/src/cstl_vector_private.c \
    ../../src/test_vector.c \
    ../../src/c_entry.c \
    ../../src/test_list.c

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_mutating_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_algo_sorting_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_alloc_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_avl_tree_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_basic_string_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_deque_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_map_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multimap_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_multiset_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hash_set_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_hashtable_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_heap_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_list_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_map_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multimap_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_multiset_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_pair_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_rb_tree_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_set_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_slist_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_aux.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_builtin.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_types_parse.h \
    ../../3rdparty/libcstl-2.3.0/src/cstl_vector_aux.h \
    ../../src/c_entry.h
