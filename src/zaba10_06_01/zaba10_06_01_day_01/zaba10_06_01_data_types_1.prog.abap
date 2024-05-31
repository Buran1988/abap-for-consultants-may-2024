*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_01_DATA_TYPES_1.

DATA my_date TYPE d.
DATA my_time TYPE t.

my_date = sy-datum.
my_time = sy-uzeit.

WRITE | { my_date DATE = USER } |.

write | { my_time time = ISO } |.

*WRITE: my_date, / my_time.

*WRITE my_date.
*WRITE my_time.
