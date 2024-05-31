*&---------------------------------------------------------------------*
*& Report ZABA10_02_MY_ITAB_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_MY_ITAB_003.

select * FROM scarr INTO TABLE @data(itab).

*1) Классический способ READ TABLE

READ TABLE itab WITH KEY carrid = 'LH' INTO data(my_line).

*2) Новый способ "Табличный выражения"

data(my_line_2) = itab[ carrid = 'AA' ].

cl_demo_output=>display( my_line_2 ).
