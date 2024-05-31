*&---------------------------------------------------------------------*
*& Report ZABA10_X12_DATA_TYPES_101
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_DATA_TYPES_101.

*local
TYPES my_s_type TYPE c LENGTH 8.
TYPES my_n_type TYPE n LENGTH 5.
TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.

DATA my_new_var TYPE my_s_type.
DATA my_num_var TYPE my_n_type.
*DATA my_percent TYPE my_p_type.

*abap-словарь
DATA my_percent TYPE zaba10_x12_my_percent.


my_num_var = 123456.
my_percent = '99.99'.


DATA airprt_from TYPE spfli-airpfrom.
airprt_from = 'SVO'.

*DATA my_bkpf TYPE bkpf-bukrs.


WRITE 'Bot tak'.
