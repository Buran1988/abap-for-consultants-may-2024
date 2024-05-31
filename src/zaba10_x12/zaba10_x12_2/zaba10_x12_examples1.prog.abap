*&---------------------------------------------------------------------*
*& Report ZABA10_X12_EXAMPLES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_EXAMPLES1.

*1
TYPES cust_name TYPE c LENGTH 10.

*2
DATA cust_number1 TYPE i.

*3
TYPES cust_number2 TYPE n LENGTH 7.

*4
TYPES cust_date TYPE d.

*5
TYPES cust_time TYPE t.

*6
TYPES: BEGIN OF cust_structure,
        cust_name TYPE c LENGTH 10,
        cust_number1 TYPE i,
        cust_number2 TYPE n LENGTH 7,
        cust_date TYPE d,
        cust_time TYPE t,
        END OF cust_structure.

*7
TYPES cust_sflight TYPE SFLIGHT.

*8
TYPES: BEGIN OF st_sflight,
      st_carrid   TYPE sflight-carrid,
      st_connid   TYPE sflight-connid,
      st_fldate   TYPE sflight-fldate,
      st_price    TYPE sflight-price,
      st_currency TYPE sflight-currency,
      st_planetype TYPE sflight-planetype,
      st_seatsmax TYPE sflight-seatsmax,
      st_seatsocc TYPE sflight-seatsocc,
      END OF st_sflight.

*9
TYPES: BEGIN OF st_sbook,
      st_carrid   TYPE sbook-carrid,
      st_connid   TYPE sbook-connid,
      st_fldate   TYPE sbook-fldate,
      st_bookid   TYPE sbook-bookid,
      st_customid TYPE sbook-customid,
END OF st_sbook.

*10
TYPES: BEGIN OF sflight_sbook.
      INCLUDE TYPE st_sflight.
      INCLUDE TYPE st_sbook AS book RENAMING WITH SUFFIX _book.
      TYPES END OF sflight_sbook.

START-OF-SELECTION.
DATA one_record TYPE sflight_sbook.
BREAK-POINT.
