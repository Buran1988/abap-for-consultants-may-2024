*----------------------------------------------------------------------*
***INCLUDE ZABA10_03_02_FORMS_01_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form SAP_DISPLAY
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM sap_display USING iter_no TYPE i.
WRITE |Итерация: { iter_no } |.
ENDFORM.
