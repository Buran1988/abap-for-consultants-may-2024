*&------------.---------------------------------------------------------*
*& Report ZABA10_09_DATA_TYPE_101
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_DATA_TYPE_101.
TYPES my_s_type type c LENGTH 8.
DATA my_new_var TYPE my_s_type.

TYPES my_n_type type n LENGTH 5.
DATA my_num_var TYPE my_n_type.

my_num_var = 123456 .

*TYPES my_p_type type p LENGTH 3 DECIMALS 2. комметрирую потому что создали элемент поля и его будем использовать ниже
DATA my_perscent TYPE ZABA10_09_MY_PERCENT .

my_perscent = '99.99' .

DATA airport_from TYPE spfli-airpfrom .
airport_from = 'DMD'.
WRITE 'bot tak'.
