*&---------------------------------------------------------------------*
*& Report ZABA10_02_MY_ITAB_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_MY_ITAB_001.


DATA itab TYPE TABLE OF SCARR.
DATA wa_itab TYPE scarr.

SELECT * FROM scarr into TABLE itab.

LOOP AT itab INTO wa_itab.

  IF wa_itab-currcode <> 'EUR'.
     delete itab.
     ENDIF.

ENDLOOP.


cl_demo_output=>display( itab ).
