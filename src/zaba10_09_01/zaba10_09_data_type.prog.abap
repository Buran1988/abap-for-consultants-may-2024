*&---------------------------------------------------------------------*
*& Report ZABA10_09_DATA_TYPE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_DATA_TYPE.
DATA my_date TYPE d.
DATA my_time TYPE t.
my_date = sy-datum.
*'20240528'.
my_time = sy-uzeit.
WRITE |{ my_date DATE = USER }|.
WRITE |{ my_time TIME = USER }|.
