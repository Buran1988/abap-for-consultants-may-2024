*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_CIRCLE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_02_CIRCLE_01.

PARAMETERS p_rad TYPE i.

DATA my_area TYPE f.

    CALL FUNCTION 'Z_ABA10_03_CIRCLEAREA'
      EXPORTING
        radius        = p_rad
      IMPORTING
        AREA          = my_area.


    WRITE my_area.
