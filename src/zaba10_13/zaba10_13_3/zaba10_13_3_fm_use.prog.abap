*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_FM_USE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_13_3_fm_use.

PARAMETERS p_rad TYPE i.

DATA area_13 TYPE f.

CALL FUNCTION 'Z_ABA10_13_FM_CIRCLE_AREA'
  EXPORTING
    radius = p_rad
  IMPORTING
   area   = area_13
  .

WRITE area_13.
