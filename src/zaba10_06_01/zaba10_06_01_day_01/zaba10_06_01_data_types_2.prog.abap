*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_01_DATA_TYPES_2.

TYPES my_s_type TYPE c LENGTH 8.
DATA my_new_var TYPE my_s_type.

TYPES my_n_type TYPE n LENGTH 5.
DATA my_num_var TYPE my_n_type.
my_num_var = 1234567.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.
DATA my_percent TYPE zaba10_06_01_my_percent.
my_percent = '99.99'.

DATA airprt_from TYPE spfli-airpfrom.

airprt_from = 'SVO'.


WRITE 'Вот так!'.
