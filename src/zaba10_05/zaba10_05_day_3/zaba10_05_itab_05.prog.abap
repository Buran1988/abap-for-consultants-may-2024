*&---------------------------------------------------------------------*
*& Report ZABA10_05_ITAB_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_ITAB_05.


DATA itab TYPE table of scarr.
DATA wa_itab TYPE  scarr.

SELECT * from scarr into TABLE itab.

loop at itab INTO wa_itab.
  if wa_itab-currcode <> 'EUR'.
    delete itab.
    endif.
    ENDLOOP.


cl_demo_output=>display( itab ).
