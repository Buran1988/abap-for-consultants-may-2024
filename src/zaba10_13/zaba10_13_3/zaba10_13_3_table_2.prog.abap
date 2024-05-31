*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_TABLE_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_3_TABLE_2.

select * from scarr INTO TABLE @DATA(ITAB).


*1) классика

READ TABLE itab with KEY carrid = 'LH' INTO DATA(my_line).

*2) современный

DATA(my_line_2) = itab[ carrid = 'AA' ].

cl_demo_output=>display( my_line_2 ).

cl_demo_output=>display( my_line ).
