*&---------------------------------------------------------------------*
*& Report ZABA10_99_CIRCLE_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_CIRCLE_100.

PARAMETERS p_rad TYPE i.

data my_area TYPE f.

call FUNCTION 'Z_ABA10_99_CIRCLE_AREA'
  EXPORTING
    radius = conv f( p_rad )
  IMPORTING
    area   = my_area
  .

WRITE my_area.
