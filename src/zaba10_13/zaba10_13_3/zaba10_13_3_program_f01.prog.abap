*----------------------------------------------------------------------*
***INCLUDE ZABA10_13_3_PROGRAM_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form sub_display
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM sub_display USING iter_No TYPE i.
WRITE / |Итерация: { iter_No }|.
ENDFORM.
