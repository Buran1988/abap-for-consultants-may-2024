*&---------------------------------------------------------------------*
*& Report ZABA10_02_MY_ITAB_002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_MY_ITAB_002.

DATA itab_1 TYPE TABLE OF ZABA10_02_MY_STRUCTURE.
DATA itab_2 TYPE ZABA10_02_MY_ITAB1.

*1) APPEND
*1.1) Способ классический

data my_struct like line of itab_1.

my_struct-name = 'Ваня'.
my_struct-surname = 'Иванов'.

APPEND my_struct to itab_1.

*1.2) Способ "новый" - если версия старше чем 7.50

itab_1 = VALUE #( BASE itab_1
                  ( name = 'Пётр' surname = 'Петров' )
                  ( name = 'Пётр1' surname = 'Петров' )
                  ( name = 'Пётр2' surname = 'Петров' )
                ).

APPEND VALUE #( name = 'Семён' surname = 'Семёнов' ) TO itab_1.

cl_demo_output=>display( itab_1
*  EXPORTING
*    data    =
*    name    =
*    exclude =
*    include =
).
