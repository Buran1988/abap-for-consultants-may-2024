CLASS zaba10_99_employee_100 DEFINITION
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



CLASS ZABA10_99_EMPLOYEE_100 IMPLEMENTATION.


  METHOD show_report.

    WRITE / |Имя: { me->name }. Фамилия: { me->surname }. Зарплата: { me->salary }.|.

  ENDMETHOD.
ENDCLASS.
