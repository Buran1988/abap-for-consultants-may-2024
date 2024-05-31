*&---------------------------------------------------------------------*
*& Report ZABA10_01_ITAB_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_itab_04.

DATA itab_1 TYPE TABLE OF zaba10_01_my_structure01.

DATA itab_2 TYPE  zaba10_01_my_tab1.

*1) APPEND

*1.1) Способ классический

DATA my_struct LIKE LINE OF itab_1.

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
