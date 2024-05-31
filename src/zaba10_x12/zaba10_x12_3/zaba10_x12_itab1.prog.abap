*&---------------------------------------------------------------------*
*& Report ZABA10_X12_ITAB1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_ITAB1.


*DATA itab TYPE scarr.    "1 структура

*DATA itab TYPE table of scarr.    "2 таблица

DATA itab TYPE table of scarr.    "3 внутренняя таблица
**SELECT * from scarr into table itab.         "3 1 таблица
* SELECT * from scarr into table @itab.        "3 2 таблица
* SELECT carrid from scarr into table @itab.  "3 3 таблица

*4
*SELECT * from scarr into table @itab where CURRENCY_CONVERSION.

DATA wa_itab TYPE scarr.

SELECT * from scarr into table @itab.
LOOP AT itab INTO wa_itab.

  IF wa_itab-currcode <> 'EUR'.
    delete itab.         "внутри цикла удаляет только строку в которой находится

  ENDIF.

ENDLOOP.


cl_demo_output=>display( itab ).   "таблица
