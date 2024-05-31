*&---------------------------------------------------------------------*
*& Report ZABA10_09_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_HR_SERVICE.

DATA employee_1 TYPE REF TO ZABA10_09_EMPLOYEE_100.
DATA employee_2 TYPE REF TO ZABA10_09_EMPLOYEE_100.
DATA employee_3 TYPE REF TO ZABA10_09_EMPLOYEE_100.

CREATE OBJECT employee_1.

employee_1->name = 'Иван'.
employee_1->surname = 'Иванов'.
employee_1->salary = 100.

CREATE OBJECT employee_2.

employee_1->name = 'Света'.
employee_1->surname = 'Петрова'.
employee_1->salary = 200.

CREATE OBJECT employee_3.

employee_1->name = 'Игорь'.
employee_1->surname = 'Плужников'.
employee_1->salary = 300.
