CLASS zaba10_07_person_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA name TYPE string.
    DATA surname TYPE string.
    DATA salary TYPE i.

    METHODS show_report.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZABA10_07_PERSON_01 IMPLEMENTATION.


  METHOD show_report.
  WRITE / |name:{ name }. surname:{ surname }. salary: { salary }.|.

  ENDMETHOD.
ENDCLASS.
