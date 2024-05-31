*&---------------------------------------------------------------------*
*& Report ZABA10_13_DATA_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_DATA_1.

DATA my_date TYPE d.

DATA my_time TYPE t.

my_date = sy-datum.

my_time = sy-uzeit.

WRITE |{ my_date date = ISO }|.
Write |{ my_time time = ISO }|.
