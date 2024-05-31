*&---------------------------------------------------------------------*
*& Report ZABA10_99_ITAB_200
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_ITAB_200.

data itab_1 type TABLE of zaba10_99_my_structure_1.

data itab_2 type  zaba10_99_my_tab_1.


*1) APPEND

*1.1) Способ классический

data my_struct like LINE OF itab_1.

my_struct-name = 'Ваня'.
my_struct-surname = 'Иванов'.

APPEND my_struct TO itab_1.

*1.2) Способ "новый"

itab_1 = VALUE #( BASE itab_1
                  ( name = 'Пётр' surname = 'Петров' )
                  ( name = 'Пётр 1' surname = 'Петров' )
                  ( name = 'Пётр 2' surname = 'Петров' )
                  ( name = 'Пётр 3' surname = 'Петров' )
                 ).

APPEND VALUE #( name = 'Семён' surname = 'Семёнов' )  TO itab_1.


cl_demo_output=>display( itab_1
*  EXPORTING
*    data    =
*    name    =
*    exclude =
*    include =
).
