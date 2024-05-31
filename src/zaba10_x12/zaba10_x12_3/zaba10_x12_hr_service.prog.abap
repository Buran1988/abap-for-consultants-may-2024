*&---------------------------------------------------------------------*
*& Report ZABA10_X12_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_HR_SERVICE.

DATA employee_1 TYPE REF TO ZABA10_X12_EMPLOYEE1.  " объявление только
DATA employee_2 TYPE REF TO ZABA10_X12_EMPLOYEE1.
DATA employee_3 TYPE REF TO ZABA10_X12_EMPLOYEE1.

DATA registr_empl TYPE table of ref to ZABA10_X12_EMPLOYEE1.

CREATE OBJECT employee_1.         " создание объекта
employee_1->name = 'Иван'.
employee_1->surname = 'Иванов'.
employee_1->salary = 100.
APPEND employee_1 to registr_empl.

CREATE OBJECT employee_2.         " создание объекта
employee_2->name = 'Иван2'.
employee_2->surname = 'Иванов2'.
employee_2->salary = 200.
APPEND employee_2 to registr_empl.

CREATE OBJECT employee_3.         " создание объекта
employee_3->name = 'Иван3'.
employee_3->surname = 'Иванов3'.
employee_3->salary = 300.
APPEND employee_3 to registr_empl.

loop at registr_empl into data(this_empl).
  this_empl->show_report( ).
endloop.
