*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_ITAB_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_01_itab_03.

SELECT * FROM scarr INTO TABLE @DATA(itab).

*  1). Классический способ READ TABLE
READ TABLE itab WITH KEY carrid = 'LH' INTO DATA(my_line).

*2). Новый способ Табличные выражения
DATA(my_line2) = itab[ carrid = 'AA' ].

cl_demo_output=>display( my_line2 ).
*cl_demo_output=>display( itab ).
