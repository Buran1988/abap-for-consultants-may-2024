*&---------------------------------------------------------------------*
*& Report ZABA10_01_LOOPS_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_loops_01.

*
*DO .
*  WRITE / |Итерация цикла { sy-index }|.
*
*ENDDO.

DATA my_var TYPE i.

WHILE my_var < 15.

*  my_var  = my_var + 1.

  WRITE / |Значение переменной my_var =  { my_var }|.

  ADD 1 TO my_var.

ENDWHILE.
