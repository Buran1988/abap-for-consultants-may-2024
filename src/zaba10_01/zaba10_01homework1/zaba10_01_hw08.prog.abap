*&---------------------------------------------------------------------*
*& Report ZABA10_01_HW08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_hw08.
TYPES: BEGIN OF s_sflight,
         st_carrid    TYPE sflight-carrid,
         st_connid    TYPE sflight-connid,
         st_fldate    TYPE sflight-fldate,
         st_price     TYPE sflight-price,
         st_currency  TYPE sflight-currency,
         st_planetype TYPE sflight-planetype,
         st_seatsmax  TYPE sflight-seatsmax,
         st_seatsocc  TYPE sflight-seatsocc,
       END OF s_sflight.
