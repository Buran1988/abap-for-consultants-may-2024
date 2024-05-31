*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_FOR_CLASS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_3_FOR_CLASS.

DATA  empl_1 TYPE REF TO zaba10_13_class_employee.
DATA  empl_2 TYPE REF TO zaba10_13_class_employee.
DATA  empl_3 TYPE REF TO zaba10_13_class_employee.

DATA regist_1 TYPE table of REF TO zaba10_13_class_employee.

create OBJECT empl_1.

empl_1->name = 'Петр'.
empl_1->surname = 'Петров'.
empl_1->salary = '2000'.

APPEND empl_1 to regist_1.

create OBJECT empl_2.

empl_2->name = 'Федор'.
empl_2->surname = 'Карпов'.
empl_2->salary = '20000'.

APPEND empl_2 to regist_1.

create OBJECT empl_3.

empl_3->name = 'Иван'.
empl_3->surname = 'Мухин'.
empl_3->salary = '12000'.

APPEND empl_3 to regist_1.

LOOP AT regist_1 INTO DATA(this_empl).

  this_empl->show_report( ).

ENDLOOP.
