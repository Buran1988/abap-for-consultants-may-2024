*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_ITAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_01_ITAB.

DATA itab TYPE table of scarr.

DATA wa_itab TYPE scarr.

SELECT * from scarr INTO TABLE @itab.

  LOOP AT itab INTO wa_itab.
    IF  wa_itab-currcode <> 'EUR'.
      DELETE itab.

    ENDIF.

  ENDLOOP.


cl_demo_output=>display( itab ).
