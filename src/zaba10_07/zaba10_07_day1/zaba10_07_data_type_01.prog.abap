*&---------------------------------------------------------------------*
*& Report ZABA10_07_DATA_TYPE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_DATA_TYPE_01.

DATA my_date TYPE d.

DATA my_time TYPE t.

my_date = sy-datum.

my_time = sy-uzeit.

WRITE: | Дата: { my_date DATE = USER }, Время: { my_time TIME = USER }|.
