*&---------------------------------------------------------------------*
*& Report ZABA10_99_ITAB_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_ITAB_100.


data itab TYPE table of scarr.

data wa_itab TYPE scarr.

select * FROM scarr into TABLE @itab.

LOOP AT itab INTO wa_itab.

  IF wa_itab-currcode <> 'EUR'.
    delete itab.

  ENDIF.

ENDLOOP.



cl_demo_output=>display( itab ).
