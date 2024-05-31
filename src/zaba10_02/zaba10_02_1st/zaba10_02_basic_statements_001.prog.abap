*&---------------------------------------------------------------------*
*& Report ZABA10_02_BASIC_STATEMENTS_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_02_basic_statements_001.


PARAMETERS: pa_a    TYPE p LENGTH 5 DECIMALS 2,
            pa_b    TYPE p LENGTH 5 DECIMALS 2,
            pa_oper TYPE c.
DATA result TYPE p LENGTH 5 DECIMALS 2.

*IF pa_oper = '+'.
*  result = pa_a + pa_b.
*
*
*ELSEIF pa_oper = '-'.
*  result = pa_a - pa_b.
*
*ELSEIF pa_oper = '/'.
*  result = pa_a / pa_b.
*
*ELSEIF pa_oper = '*'.
*  result = pa_a * pa_b.
*
*ELSEIF pa_oper NA '+-*/'.
*  WRITE |Некорректный ввод: измените действие!|.
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
MESSAGE 'Ошибка. Допустимые операторы: +,-,*,/.' TYPE 'I'.
RETURN.

ENDCASE.

WRITE |Ответ: { result }|.
