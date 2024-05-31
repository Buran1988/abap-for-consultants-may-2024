*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_DATA_TYPES_1.

data my_date TYPE d.

DATA my_time TYPE t.

my_date = sy-datum.

my_time = sy-uzeit.

WRITE |{ my_date DATE = USER } | .

WRITE |{ my_time TIME = ISO }|.
