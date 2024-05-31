*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_CIRCLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_01_CIRCLE.

PARAMETERS pa_rad TYPE i.

DATA my_area TYPE F.

CALL FUNCTION 'Z_ABA10_06_CIRCLE_AREA'
  EXPORTING
    radius = conv f( pa_rad )
  IMPORTING
    area   = my_area.

write my_area.

*CALL FUNCTION 'Z_ABA10_06_CIRCLE_AREA'
*  EXPORTING
*    radius        =
** IMPORTING
**   AREA          =
*          .
