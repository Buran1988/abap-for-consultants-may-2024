class ZABA10_02_EMPLOYEE_01 definition
  public
  final
  create public .

public section.

data name type string.

data surname type string.

data salary type i.

METHODS show_report.

protected section.
private section.
ENDCLASS.



CLASS ZABA10_02_EMPLOYEE_01 IMPLEMENTATION.


METHOD show_report.

WRITE / |Имя: { me->name }. Фамилия: { me->surname }. Зарплата: { me->salary } |.



ENDMETHOD.
ENDCLASS.
