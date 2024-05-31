*&---------------------------------------------------------------------*
*& Report ZABA10_X12_ITAB2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_ITAB2.

data itab_1 TYPE table of zaba10_x12_my_structure1.

*data itab_2 TYPE table of zaba10_x12_my_tab1.   "таблица таблиц
data itab_2 TYPE zaba10_x12_my_tab1.    "таблица

*
*1) append
*1.1 способ классический
DATA my_struct LIKE LINE OF itab_1.

my_struct-name = 'Ваня'.
my_struct-surname = 'Иванов'.

APPEND my_struct to itab_1.

*1.2) способ "новый"
itab_1 = VALUE #( BASE itab_1
                ( name = 'Петр' surname = 'Петров')
                ( name = 'Петр2' surname = 'Петров')
                ( name = 'Петр3' surname = 'Петров3')
                ( name = 'Петр4' surname = 'Петров')
                ( name = 'Петр5' surname = 'Петров5')
               ).

APPEND VALUE #( name = 'Семен' surname = 'Семенов' ) to itab_1.



cl_demo_output=>display( itab_1 ).
