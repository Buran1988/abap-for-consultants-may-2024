*&---------------------------------------------------------------------*
*& Report ZABA10_07_ITAB_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_ITAB_02.

DATA itab01 type table of zaba10_07_mystructure_01.

DATA itab02 type zaba10_07_my_tab_01.


*1) Append

*1.1) Классический способ

DATA my_strc like LINE OF itab01.
my_strc-name = 'Larisa'.
my_strc-surname = 'Lazaridi'.

APPEND my_strc to itab01.

*1.2) Способ новый

itab01 = VALUE #( base itab01
( name = 'Alexandr' surname = 'Pushkin')
).

APPEND VALUE #( name = 'Anna' surname = 'Karenina') to itab01.

cl_demo_output=>display( itab01 ).
