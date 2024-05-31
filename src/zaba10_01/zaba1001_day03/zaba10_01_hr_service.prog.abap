*&---------------------------------------------------------------------*
*& Report ZABA10_01_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_hr_service.


DATA employee_1 TYPE REF TO zaba10_01_employee01.
DATA employee_2 TYPE REF TO zaba10_01_employee01.
DATA employee_3 TYPE REF TO zaba10_01_employee01.

DATA registr_empl TYPE table of REF TO zaba10_01_employee01.

create OBJECT employee_1.

employee_1->name = 'Иван'.
employee_1->surname = 'Иванов'.
employee_1->salary = 100.

APPEND employee_1 to registr_empl.

create OBJECT employee_2.

employee_1->name = 'Фёдор'.
employee_1->surname = 'Фёдоров'.
employee_1->salary = 200.

APPEND employee_2 to registr_empl.


create OBJECT employee_3.

employee_1->name = 'Степан'.
employee_1->surname = 'Степанов'.
employee_1->salary = 300.

APPEND employee_3 to registr_empl.


LOOP AT registr_empl INTO DATA(this_empl).

  this_empl->show_report( ).

ENDLOOP.
