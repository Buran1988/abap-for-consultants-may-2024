*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_01_hr_service.

DATA employee_1 TYPE REF TO zaba10_06_employee.
DATA employee_2 TYPE REF TO zaba10_06_employee.
DATA employee_3 TYPE REF TO zaba10_06_employee.

DATA regestr_empl TYPE TABLE OF REF TO zaba10_06_employee.

CREATE OBJECT employee_1.
employee_1->name = 'Иван'.
employee_1->surname = 'Иванов'.
employee_1->salary = 100.
APPEND employee_1 TO regestr_empl.

CREATE OBJECT employee_2.
employee_2->name = 'фЕДОР'.
employee_2->surname = 'Федоров'.
employee_2->salary = 200.
APPEND employee_2 TO regestr_empl.

CREATE OBJECT employee_3.
employee_3->name = 'Степан'.
employee_3->surname = 'Степанов'.
employee_3->salary = 300.
APPEND employee_3 TO regestr_empl.

LOOP AT regestr_empl INTO DATA(this_empl).
  this_empl->show_report( ).
ENDLOOP.
