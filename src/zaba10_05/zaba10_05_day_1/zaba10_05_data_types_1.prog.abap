*&---------------------------------------------------------------------*
*& Report ZABA10_05_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_DATA_TYPES_1.

DATA my_date TYPE d.

DATA my_time TYPE t.

my_date = sy-datum.

my_time = sy-uzeit.

*my_date = '20240528'.*
*my_date = sy-datum.*

WRITE | { my_date DATE = User } |.
WRITE | { my_time TIME = ISO } |.
