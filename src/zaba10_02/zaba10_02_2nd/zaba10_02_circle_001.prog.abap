*&---------------------------------------------------------------------*
*& Report ZABA10_02_CIRCLE_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_CIRCLE_001.

PARAMETERS p_rad TYPE i.
DATA my_area TYPE f.

call FUNCTION 'Z_ABA10_02_CIRCLE_AREA'
EXPORTING
radius = p_rad
IMPORTING
area = my_area
.

WRITE my_area.
