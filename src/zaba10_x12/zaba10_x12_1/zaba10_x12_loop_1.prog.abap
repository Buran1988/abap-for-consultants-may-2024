*&---------------------------------------------------------------------*
*& Report ZABA10_X12_LOOP_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_LOOP_1.

*DO 10 TIMES.
*  WRITE / |Итерация цикла { sy-index } |.
*
*ENDDO.

*DO . *вечный цикл
*  WRITE / |Итерация цикла { sy-index } |.
*
*ENDDO.

DATA my_var TYPE i.

WHILE my_var < 15.
  WRITE / |Значение переменной { my_var }|.
  my_var = my_var + 1.
*  add 1 to  my_var.

*CONV

ENDWHILE.