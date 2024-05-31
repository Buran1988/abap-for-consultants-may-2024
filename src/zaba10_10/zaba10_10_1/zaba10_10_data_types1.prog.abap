*&---------------------------------------------------------------------*
*& Report ZABA10_10_DATA_TYPES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_10_DATA_TYPES1.

DATA my_date type d.

DATA my_time type t.

my_date = sy-datum.
**'20240528'.

my_time = sy-uzeit.

WRITE my_date.
new-LINE.
WRITE |{ my_time TIME = ISO }|.
