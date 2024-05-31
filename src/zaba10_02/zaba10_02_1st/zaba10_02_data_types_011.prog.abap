*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES_011
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES_011.

TYPES my_s_type TYPE c LENGTH 8.

DATA my_var_1 TYPE my_s_type.

TYPES my_n_type TYPE n LENGTH 6.
DATA my_num_var TYPE my_n_type.

my_num_var = 123456.

*TYPES my_p_type TYPE p LENGTH 3 DECIMALS 2.
DATA my_percent type zaba10_02_my_percwnt.

my_percent = '99.99'.

DATA my_year type c LENGTH 30.

WRITE |{ my_num_var }|.
WRITE / |{ my_percent }|.
