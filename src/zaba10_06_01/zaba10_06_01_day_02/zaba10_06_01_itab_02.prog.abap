*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_ITAB_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_01_ITAB_02.

DATA itab1 TYPE TABLE of ZABA10_06_01_MY_STRUCTURE_01.

DATA itab2 TYPE zaba10_06_01_my_tab_01.

*1). APPEND

*1.1) Классический способ
DATA my_struct like LINE OF itab1.
my_struct-name = 'Ваня'.
my_struct-surname = 'Иванов'.

APPEND my_struct to itab1.

*1.2). Новый способ
itab1 = VALUE #( BASE itab1
                ( name = 'Петр' surname = 'Петров' )
                ( name = 'Петр 1' surname = 'Петров' )
                ( name = 'Петр 2' surname = 'Петров' )
                ( name = 'Петр 3' surname = 'Петров' )
                ).

APPEND VALUE #( name = 'Семён' surname = 'Семенов') to itab1.

cl_demo_output=>display( itab1 ).
