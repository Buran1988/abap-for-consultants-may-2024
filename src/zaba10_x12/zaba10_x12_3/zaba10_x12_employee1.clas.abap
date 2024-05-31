class ZABA10_X12_EMPLOYEE1 definition
  public
  final
  create public .

public section.

DATA name TYPE string.
DATA surname TYPE string.
DATA salary TYPE i.

METHODS show_report.       "объявление

protected section.
private section.
ENDCLASS.



CLASS ZABA10_X12_EMPLOYEE1 IMPLEMENTATION.


  METHOD show_report.

WRITE / |Имя: { me->name }. Фамилия: { me->surname }. Зарплата: { me->salary } |.

  ENDMETHOD.
ENDCLASS.
