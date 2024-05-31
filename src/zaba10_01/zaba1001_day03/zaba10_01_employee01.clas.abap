class ZABA10_01_EMPLOYEE01 definition
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



CLASS ZABA10_01_EMPLOYEE01 IMPLEMENTATION.


  METHOD show_report.

    WRITE / |Имя: { me->name }. Фамилия: { me->surname }. Зарплата: { me->salary }.|.

  ENDMETHOD.
ENDCLASS.
