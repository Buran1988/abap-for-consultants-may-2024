*&---------------------------------------------------------------------*
*& Report ZABA10_05_DATA_TYPES_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_DATA_TYPES_05.

BREAK-POINT.
TYPES my_s_type TYPE c LENGTH 8.

DATA my_new_var TYPE my_s_type.


TYPES my_n_type TYPE n LENGTH 5.

DATA my_num_var TYPE my_n_type.

my_num_var = 123456.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.*

DATA my_percent TYPE zaba10_05_my_percent.

my_percent = '99.99'.

DATA airprt_from TYPE spfli-airpfrom.

airprt_from = 'SVO'.

WRITE 'bot tak!'.
