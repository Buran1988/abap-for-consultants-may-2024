*&---------------------------------------------------------------------*
*& Report ZABA10_09_CIRCLE_101
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_CIRCLE_101.

PARAMETERS p_rad TYPE i.
data my_area TYPE f.

CALL FUNCTION 'Z_ABA10_99_CIRCLE_AREA'
  EXPORTING
    radius = p_rad
IMPORTING
AREA = my_area.

write my_area.
