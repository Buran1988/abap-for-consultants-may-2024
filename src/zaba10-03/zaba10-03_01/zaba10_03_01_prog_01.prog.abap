*&---------------------------------------------------------------------*
*& Report ZABA10_03_01_PROG_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_01_PROG_01.

parameters pa_name type c LENGTH 30.
WRITE 'Hello' && pa_name.
WRITE | Првиет { pa_name } ! |.
