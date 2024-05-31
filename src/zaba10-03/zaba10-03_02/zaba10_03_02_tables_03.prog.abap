*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_TABLES_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_02_TABLES_03.


*SELECT * FROM scarr into table itab WHERE currcode = 'EUR'.
SELECT * FROM scarr INTO TABLE @data(itab).

*Классич способ выборки
READ TABLE itab INDEX 1 INTO data(my_line).

*Новый способ выборки
data(my_line2) = itab[ carrid = 'AA'].

  cl_demo_output=>display( itab ).
   cl_demo_output=>display( my_line ).
      cl_demo_output=>display( my_line2 ).
