*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_TABLES_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_03_02_tables_01.

DATA itab TYPE TABLE OF scarr.

DATA wa_itab TYPE scarr.

*SELECT * FROM scarr into table itab WHERE currcode = 'EUR'.
SELECT * FROM scarr INTO TABLE itab.

LOOP AT itab INTO wa_itab.

  IF wa_itab-currcode <> 'EUR'.
  DELETE itab.

  ENDIF.

ENDLOOP.

  cl_demo_output=>display( itab ).
