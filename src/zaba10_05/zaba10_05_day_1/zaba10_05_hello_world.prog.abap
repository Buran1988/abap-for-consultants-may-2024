*&---------------------------------------------------------------------*
*& Report ZABA10_05_HELLO_WORLD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_HELLO_WORLD.

parameters pa_name TYPE c Length 30.

*WRITE 'Привет,' && pa_name.*
WRITE |Привет, { pa_name }! |.
