*&---------------------------------------------------------------------*
*& Report ZABA10_X12_ITAB3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_x12_itab3.

*выбрать все строки - по новому
SELECT * FROM scarr INTO TABLE @data(itab).

*1) Классический способ READ TABLE
*  READ TABLE itab INDEX 1 INTO daTA(MY_LINE). "1
  READ TABLE itab with key carrid = 'LH' INTO daTA(MY_LINE).   "2

*2) Новый способ табл. выраж.

data(MY_LINE_2) = itab[ carrid = 'AA' ].


*  cl_demo_output=>display( itab ).
*  cl_demo_output=>display( MY_LINE ).
    cl_demo_output=>display( MY_LINE_2 ).
