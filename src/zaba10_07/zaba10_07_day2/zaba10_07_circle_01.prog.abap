*&---------------------------------------------------------------------*
*& Report ZABA10_07_CIRCLE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_circle_01.

PARAMETERS p_rad TYPE i.

DATA my_area TYPE f.

call FUNCTION 'Z_ABA10_07_CIRCLE_AREA'
  EXPORTING
    radius = p_rad
  IMPORTING
    area   = my_area
  .

WRITE my_area.
