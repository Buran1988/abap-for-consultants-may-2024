*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_BASE_STATEMENTS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_01_base_statements_1.

PARAMETERS: pa_a    TYPE i,
            pa_b    TYPE i,
            pa_oper TYPE c.

DATA result TYPE p LENGTH 5 DECIMALS 2.

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
    MESSAGE 'Ошибка. Допустимые операторы +, -, *, /.' Type 'E'.
    RETURN.
ENDCASE.

WRITE |Ответ: { result }|.


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
*ELSE.
*  write 'Ошибка'.
*
*ENDIF.

*WRITE |Ответ: { result }|.
