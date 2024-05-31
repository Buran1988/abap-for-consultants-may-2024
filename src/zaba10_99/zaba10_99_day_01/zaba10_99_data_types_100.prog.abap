*&---------------------------------------------------------------------*
*& Report ZABA10_99_DATA_TYPES_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_DATA_TYPES_100.

data my_date TYPE d.

DATA my_time TYPE t.

my_date = sy-datum.

my_time = sy-uzeit.

WRITE |{ my_date DATE = USER } | .

WRITE |{ my_time TIME = ISO }|.
