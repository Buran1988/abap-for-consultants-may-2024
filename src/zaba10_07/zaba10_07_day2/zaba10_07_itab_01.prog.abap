*&---------------------------------------------------------------------*
*& Report ZABA10_07_ITAB_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_itab_01.

DATA itab TYPE TABLE OF scarr.
DATA wa_itab TYPE scarr.

SELECT * FROM scarr INTO TABLE @itab.

LOOP AT itab INTO wa_itab.
  IF wa_itab-currcode <> 'EUR'.
    DELETE itab.
  ENDIF.
ENDLOOP.



cl_demo_output=>display( itab ).
