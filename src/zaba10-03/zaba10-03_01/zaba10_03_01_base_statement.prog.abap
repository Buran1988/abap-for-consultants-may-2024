*&---------------------------------------------------------------------*
*& Report ZABA10_03_01_BASE_STATEMENT
*---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
REPORT zaba10_03_01_base_statement.

PARAMETERS: pa_a    TYPE i,
            pa_b    TYPE i,
            pa_oper TYPE c.

DATA result TYPE p LENGTH 5 DECIMALS 2.

*IF pa_oper = '+'.
* * result = pa_a + pa_b.
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

    MESSAGE 'Ошибкаю Допустимые операторы +-*/' TYPE 'S'.
    RETURN.
ENDCASE.



    WRITE |Ответ: { result } |.
