*&---------------------------------------------------------------------*
*& Report ZABA10_99_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_HR_SERVICE.

DATA employee_1 type REF TO zaba10_99_employee_100.
DATA employee_2 type REF TO zaba10_99_employee_100.
DATA employee_3 type REF TO zaba10_99_employee_100.

DATA registr_empl TYPE table of REF TO zaba10_99_employee_100.

create OBJECT employee_1.

employee_1->name = 'Иван'.
employee_1->surname = 'Иванов'.
employee_1->salary = 100.

APPEND employee_1 to registr_empl.

create OBJECT employee_2.

employee_2->name = 'Фёдор'.
employee_2->surname = 'Фёдоров'.
employee_2->salary = 200.

APPEND employee_2 to registr_empl.

create OBJECT employee_3.

employee_3->name = 'Степан'.
employee_3->surname = 'Степанов'.
employee_3->salary = 300.

APPEND employee_3 to registr_empl.

LOOP AT registr_empl INTO DATA(this_empl).

  this_empl->show_report( ).

ENDLOOP.
