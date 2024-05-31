*&---------------------------------------------------------------------*
*& Report ZABA10_07_DATA_BASE_STATE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_data_base_state_1.


PARAMETERS: pa_a    TYPE i,
            pa_b    TYPE i,
            pa_oper TYPE c.

DATA result TYPE p LENGTH 5 DECIMALS 2.

*IF pa_oper = '+'.
*  result = pa_a + pa_b.
*ENDIF.
*
*IF pa_oper = '-'.
*  result = pa_a - pa_b.
*ENDIF.
*
*IF pa_oper = '*'.
*  result = pa_a * pa_b.
*ENDIF.
*
*IF pa_oper = '/'.
*  result = pa_a / pa_b.
*ENDIF.


CASE pa_oper.
  WHEN '+'.
    result = pa_a + pa_b.
  WHEN '-'.
    result = pa_a - pa_b.
  WHEN '/'.
    result = pa_a / pa_b.
  WHEN '*'.
    result = pa_a * pa_b.
  WHEN OTHERS.

    MESSAGE 'Ошибка. Недопустимый оператор.' TYPE 'I'.
    RETURN.
ENDCASE.

WRITE | Ответ: { result } |.
