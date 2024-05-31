*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYPES_01_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_DATA_TYPES_01_02.

TYPES my_s_type type c LENGTH 8.

DATA my_new_var TYPE my_s_type.

TYPES my_n_type TYPE n LENGTH 5.
DATA my_num_var TYPE my_n_type.

my_num_var = 123456.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.
DATA my_percent TYPE ZABA10_01_MY_PERCENT.
my_percent = '99.99'.

data airprt_from TYPE spfli-airpfrom.

airprt_from = 'SVO'.

WRITE 'Bot tak!'.
