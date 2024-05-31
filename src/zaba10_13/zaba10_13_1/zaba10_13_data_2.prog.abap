*&---------------------------------------------------------------------*
*& Report ZABA10_13_DATA_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_DATA_2.

TYPES my_s_type TYPE c LENGTH 10.

DATA my_new_var TYPE my_s_type.

TYPES my_n_type TYPE n LENGTH 5.
DATA my_num_var TYPE my_n_type.

my_num_var = 123456.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.
DATA my_percent TYPE zaba10_13_percent.

my_percent = '99.99'.

data airport_from TYPE spfli-airpfrom.

airport_from = 'svo'.

WRITE 'ok'.
