*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_FORMS_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_03_02_forms_01.

DO 10 TIMES.
    PERFORM sap_display
    USING sy-index.
ENDDO.

INCLUDE zaba10_03_02_forms_01_f01.
