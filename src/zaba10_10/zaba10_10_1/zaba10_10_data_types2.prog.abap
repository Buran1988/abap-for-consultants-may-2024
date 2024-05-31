*&---------------------------------------------------------------------*
*& Report ZABA10_10_DATA_TYPES2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_10_DATA_TYPES2.

TYPES my_s_type type c LENGTH 8.

DATA my_new_var type my_s_type.

TYPES my_n_type type n LENGTH 5.

DATA my_num_var type my_n_type.

my_num_var = 123456.

*TYPES my_p_type type p LENGTH 3 DECIMALS 2.

DATA my_percent type ZABA10_10_MY_RECENT.

my_percent = '99.99'.

write 'Test'.
