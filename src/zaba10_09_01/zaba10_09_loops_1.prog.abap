*&---------------------------------------------------------------------*
*& Report ZABA10_09_LOOPS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_LOOPS_1.
*DO 10 TIMES.
*  write / |Итерация цикла { sy-index }|.
*
*ENDDO.

DATA my_var TYPE i.
WHILE my_var < 15.
  WRITE / |Значение переменной my_var = { my_var }|.
  add 1 to my_var.

ENDWHILE.