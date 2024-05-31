*&---------------------------------------------------------------------*
*& Report ZABA10_07_HW_DATA_TYPE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_HW_DATA_TYPE_01.

DATA my_char TYPE c LENGTH 10.
my_char = '1234567890'.

DATA my_int TYPE i.
 my_int = '5'.

TYPES my_n_type TYPE n LENGTH 7.
DATA my_num TYPE my_n_type.
my_num = 1234567.

DATA my_date TYPE d.
my_date = sy-datum.

DATA my_time TYPE t.
my_time = sy-uzeit.


WRITE: / my_char,
       / my_int,
       / my_num,
       / | Дата: { my_date DATE = USER }, Время: { my_time TIME = USER }|.
