*&---------------------------------------------------------------------*
*& Report ZABA10_02_LOOPS_011
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_LOOPS_011.

*DO 10 TIMES.
* WRITE / |Итерация цикла { sy-index }|.
*
*ENDDO.

DATA my_var TYPE i.

WHILE my_var < 15.

WRITE / |Значение переменной { my_var }|.
my_var = my_var + 1.

ENDWHILE.