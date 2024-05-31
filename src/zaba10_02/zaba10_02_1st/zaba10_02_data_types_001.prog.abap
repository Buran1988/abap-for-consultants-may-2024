*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES_001.

DATA my_date TYPE d.
DATA my_time TYPE t.


my_date = sy-datum.
* '20240528'.

my_time = sy-uzeit.

WRITE |{ my_date DATE = ISO }|.

WRITE |{ my_time TIME = ISO }|.


*WRITE: my_date,
*     / my_time.
