*&---------------------------------------------------------------------*
*& Report ZABA10_10_HELLO_WORLD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_10_HELLO_WORLD.

PARAMETERS pa_name TYPE c LENGTH 30.

WRITE |Превед, { pa_name }!|.
* 'Превед,' && pa_name.