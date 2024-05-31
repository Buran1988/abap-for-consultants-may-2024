*&---------------------------------------------------------------------*
*& Report ZABA10_02_HR_CERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_HR_CERVICE.

data employee_1 TYPE REF TO zaba10_02_employee_01.

create OBJECT employee_1.

employee_1->name = 'Иван'.
employee_1->name = 'Иванов'.
employee_1->name = 100.
