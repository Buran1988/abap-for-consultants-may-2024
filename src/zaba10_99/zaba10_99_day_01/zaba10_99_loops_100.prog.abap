*&---------------------------------------------------------------------*
*& Report ZABA10_99_LOOPS_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_LOOPS_100.

FIELD-SYMBOLS <qq> TYPE i.

data my_var TYPE i.

WHILE my_var < 15.

*  my_var  = my_var + 1.

  WRITE / |Значение переменной my_var =  { my_var }|.

  add 1 TO my_var.

ENDWHILE.