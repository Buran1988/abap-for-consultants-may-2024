*&---------------------------------------------------------------------*
*& Report ZABA10_02_HELLO_WORLD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_HELLO_WORLD.

PARAMETERS pa_name TYPE c LENGTH 30.

WRITE |Привет, { pa_name }! |.

* 'Привет, ' &&pa_name .