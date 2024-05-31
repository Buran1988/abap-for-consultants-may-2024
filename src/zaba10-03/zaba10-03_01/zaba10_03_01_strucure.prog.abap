*&---------------------------------------------------------------------*
*& Report ZABA10_03_01_STRUCURE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_03_01_strucure.

DATA:
  BEGIN OF adv_struct01,
    adv_col1 TYPE c LENGTH 5 VALUE '12345',
    adv_col2 TYPE c LENGTH 5 VALUE 'abcde',
  END OF adv_struct01.

TYPES:
  BEGIN OF  sflight,
    carrid,
    connid,
    fldate,
    price,
    currency ,
    planetype,
    seatsmax,
    seatsocc,
  END OF sflight.

DATA wa_sflight TYPE sflight.

TYPES:
  BEGIN OF   sbook,
    carrid,
    connid,
    fldate,
    bookid,
    customid,
  END OF sbook.

DATA wa_SBOOK TYPE sbook.

TYPES:
  BEGIN OF  sflightsbook,
    carrid,
    connid,
    fldate,
    price,
    currency ,
    planetype,
    seatsmax,
    seatsocc,
    bookid,
    customid,
  END OF sflightsbook.

DATA wa_sflightsbook TYPE sflightsbook.

cl_demo_output=>new(
)->write_data( adv_struct01
)->write_data( adv_struct01-adv_col1
)->write_data( adv_struct01-adv_col2
)->write_data( wa_sflight
)->write_data( wa_sbook
)->write_data( wa_sflightsbook
)->write_data( CONV string( adv_struct01 )
)->display( ).
