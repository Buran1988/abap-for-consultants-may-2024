*&---------------------------------------------------------------------*
*& Report ZABA10_X12_CIRCLE1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_CIRCLE1.

PARAMETERS p_rad TYPE i.
DATA my_area TYPE f.

call  FUNCTION 'Z_ABA10_X12_CIRCLE_AREA'
  EXPORTING
    radius = p_rad   " = conv f( p_rad )    или    "   = conv #( p_rad ) но это не для FM
  IMPORTING
    area   = my_area
  .

WRITE my_area.
