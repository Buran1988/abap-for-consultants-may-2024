*&---------------------------------------------------------------------*
*& Report ZABA10_01_HW09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_hw09.

TYPES: BEGIN OF flight_booking,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF flight_booking.
