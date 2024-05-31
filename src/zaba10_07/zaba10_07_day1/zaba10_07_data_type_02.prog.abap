*&---------------------------------------------------------------------*
*& Report ZABA10_07_DATA_TYPE_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_DATA_TYPE_02.

TYPES my_c_type type c LENGTH 8.
DATA my_char_var TYPE my_c_type.

TYPES my_n_type TYPE n LENGTH 5.
DATA my_num_var TYPE my_n_type.
my_num_var = 12345.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.

DATA my_percent TYPE ZABA10_07_MYPRECENT.
my_percent = '99.99'.

DATA my_airport type spfli-AIRPFROM.
my_airport = 'VNK'.

WRITE 'Результат:'.
