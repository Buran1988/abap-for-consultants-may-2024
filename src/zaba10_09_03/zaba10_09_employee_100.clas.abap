CLASS zaba10_09_employee_100 DEFINITION
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



CLASS ZABA10_09_EMPLOYEE_100 IMPLEMENTATION.


  METHOD show_report.

    WRITE / |Имя:  { me->name }. Фамилия:  { me->surname }. Зп:  { me->salary }.|.
    ENDMETHOD.
ENDCLASS.
