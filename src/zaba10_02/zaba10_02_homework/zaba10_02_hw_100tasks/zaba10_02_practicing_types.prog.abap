*&---------------------------------------------------------------------*
*& Report ZABA10_02_PRACTICING_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_02_practicing_types.

TYPES: my_char10_type TYPE c LENGTH 10, "задача 1
       my_int_type    TYPE i, "задача 2, а где логика в объявлении существующего типа?=)
       my_7_number    TYPE n LENGTH 7, "задача 3, вопрос выше, конечно, риторический)
       my_data_type   TYPE d, "задача 4, сдаюсь, но без юмора в нашей профессии никак=)
       my_time_type   TYPE t. "задача 5

TYPES: BEGIN OF ls_first_structure, "задача 6
         char10   TYPE my_char10_type,
         integer1 TYPE my_int_type,
         number7  TYPE my_7_number,
         my_data  TYPE my_data_type,
         my_time  TYPE my_time_type.
TYPES: END OF ls_first_structure.

TYPES: my_globalst_type TYPE sflight-currency. "задача 7

TYPES: BEGIN OF ls_8_task, "задача 8
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc.
TYPES: END OF ls_8_task.

TYPES: BEGIN OF ls_9_task, "задача 9
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid.
TYPES: END OF ls_9_task.
