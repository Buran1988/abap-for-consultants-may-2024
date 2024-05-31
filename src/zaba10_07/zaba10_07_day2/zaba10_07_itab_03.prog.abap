*&---------------------------------------------------------------------*
*& Report ZABA10_07_ITAB_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_ITAB_03.

SELECT * FROM scarr INTO TABLE @DATA(itab).

* 1) Классический способ READ TABLE
  READ TABLE itab WITH KEY carrid = 'LH' into DATA(my_line).

*2) Новый способ (табл.выражение)

DATA(my_line2) = itab[ carrid = 'AA' ].

  cl_demo_output=>display( my_line ).
