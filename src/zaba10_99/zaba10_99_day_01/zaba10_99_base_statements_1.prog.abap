*&---------------------------------------------------------------------*
*& Report ZABA10_99_BASE_STATEMENTS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_base_statements_1.

PARAMETERS: pa_a    TYPE i,
            pa_b    TYPE i,
            pa_oper TYPE c.

DATA result TYPE p LENGTH 5 DECIMALS 2.


*IF pa_oper = '+'.
*  result = pa_a + pa_b.
*
*ELSEIF pa_oper = '-'.
*  result = pa_a - pa_b.
*
*ELSEIF pa_oper = '*'.
*  result = pa_a * pa_b.
*
*ELSEIF pa_oper = '/'.
*  result = pa_a / pa_b.
*
*ENDIF.


CASE pa_oper.
  WHEN '+'.
    result = pa_a + pa_b.
  WHEN '-'.
    result = pa_a - pa_b.
  WHEN '*'.
    result = pa_a * pa_b.
  WHEN '/'.
    result = pa_a / pa_b.
  WHEN OTHERS.

    MESSAGE 'Ошибка. Допустимые операторы +,-,*,/.' TYPE 'S'.
    RETURN.

ENDCASE.


WRITE |Ответ: { result }|.
