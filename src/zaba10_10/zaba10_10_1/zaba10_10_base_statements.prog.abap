*&---------------------------------------------------------------------*
*& Report ZABA10_10_BASE_STATEMENTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_10_base_statements.


PARAMETERS: pa_a    TYPE i,
            pa_b    TYPE i,
            pa_oper TYPE c.

DATA result TYPE p LENGTH 5 DECIMALS 2.

***IF pa_oper = '+'.
***  result = pa_a + pa_b.
***
***ELSEIF pa_oper = '-'.
***  result = pa_a - pa_b.
***
***ELSEIF pa_oper = '/'.
***  result = pa_a / pa_b.
***
***  ELSEIF pa_oper = '*'.
***  result = pa_a * pa_b.
***endif.

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

    MESSAGE 'Ошибка. Допустимые операторы: +,-,*,.' TYPE 'I'.
    return.

ENDCASE.

  WRITE |Ответ: { result }|.
