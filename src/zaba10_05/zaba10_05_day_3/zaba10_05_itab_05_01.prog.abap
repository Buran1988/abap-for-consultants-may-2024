*&---------------------------------------------------------------------*
*& Report ZABA10_05_ITAB_05_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_ITAB_05_01.

DATA itab_1 type table of zaba10_05_my_structure_1.
DATA itab_2 type zaba10_05_my_tab_1.
cl_demo_output=>display( itab_1