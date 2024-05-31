CLASS zaba10_13_class_employee DEFINITION
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



CLASS ZABA10_13_CLASS_EMPLOYEE IMPLEMENTATION.


  METHOD show_report.

    WRITE / |Имя: { me->name }. Фамилия: { me->surname }. Зарплата: { me->salary }.|.

  ENDMETHOD.
ENDCLASS.
