*&---------------------------------------------------------------------*
*& Report ZABA10_01_CIRCLE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_circle_01.
PARAMETERS p_rad TYPE i.

DATA my_area TYPE f.

CALL FUNCTION 'Z_ABA1001_CIRCLE_AREA'
  EXPORTING
    radius = p_rad
  IMPORTING
    area   = my_area.

WRITE my_area.
