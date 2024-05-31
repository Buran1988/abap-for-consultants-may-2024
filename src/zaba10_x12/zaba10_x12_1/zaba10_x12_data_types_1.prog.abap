*&---------------------------------------------------------------------*
*& Report ZABA10_X12_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_DATA_TYPES_1.

DATA my_date TYPE d.
DATA my_time TYPE t.

*my_date = '20240528'.
my_date = sy-datum.
my_time = sy-uzeit.

WRITE | Дата: { my_date DATE = USER } |.
WRITE | Время: { my_time TIME = ISO }|.
