*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_TABLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_13_3_table.

DATA itab TYPE  TABLE OF scarr.
DATA wa_itab TYPE  scarr.

SELECT * FROM scarr INTO TABLE itab.

LOOP AT itab INTO wa_itab.

  IF wa_itab-currcode <> 'EUR'.
    DELETE itab.

  ENDIF.

ENDLOOP.

cl_demo_output=>display( itab ).
