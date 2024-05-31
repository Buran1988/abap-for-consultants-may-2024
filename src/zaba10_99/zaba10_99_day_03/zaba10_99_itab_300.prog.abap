*&---------------------------------------------------------------------*
*& Report ZABA10_99_ITAB_300
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_itab_300.


SELECT * FROM scarr INTO TABLE @DATA(itab).


*1) Классический способ READ TABLE

READ TABLE itab WITH KEY carrid = 'ZZ' INTO DATA(my_line).

*2) Новый способ табл. выраж.

DATA(my_line_2) = itab[ carrid = 'AA' ].

cl_demo_output=>display( my_line_2 ).
