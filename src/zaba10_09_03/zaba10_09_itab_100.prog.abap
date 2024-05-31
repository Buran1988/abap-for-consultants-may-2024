*&---------------------------------------------------------------------*
*& Report ZABA10_09_ITAB_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_ITAB_100.
DATA itab TYPE TABLE of scarr.
DATA wa_itab TYPE scarr.

SELECT * FROM scarr INTO TABLE @itab.

LOOP AT itab into wa_itab.
  IF wa_itab-currcode <> 'EUR'.
    DELETE itab.

  ENDIF.

ENDLOOP.


cl_demo_output=>display( itab ).
