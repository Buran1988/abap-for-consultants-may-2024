*&---------------------------------------------------------------------*
*& Report ZABA10_13_HOMEWORK_1_7
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_13_homework_1_7.

DATA st_sflight TYPE sflight.

TYPES: BEGIN OF st_sflight,
         carrid    TYPE s_carr_id,
         connid    TYPE s_conn_id,
         fldate    TYPE s_date,
         price     TYPE s_price,
         currency  TYPE s_curr,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE s_seatsmax,
         seatsocc  TYPE s_seatsocc,
       END OF st_sflight.

DATA my_s_sbook TYPE sbook.

TYPES: BEGIN OF my_s_sbook,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         fldate   TYPE sbook-fldate,
         bookid   TYPE s_book_id,
         customid TYPE sbook-customid,
       END OF my_s_sbook.

my_s_sbook-carrid = 'LH'.

SELECT SINGLE * FROM sbook
                INTO my_s_sbook
                WHERE carrid = my_s_sbook-carrid.

 WRITE: / my_s_sbook-carrid,
         my_s_sbook-connid,
         my_s_sbook-fldate,
         my_s_sbook-bookid,
         my_s_sbook-customid.
