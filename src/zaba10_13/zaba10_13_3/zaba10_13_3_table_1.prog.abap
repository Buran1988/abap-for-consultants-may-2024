*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_TABLE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_13_3_table_1.

DATA itab_1 TYPE TABLE OF zaba10_13_structure.

DATA itab_2 TYPE zaba10_13_tab_1.

*1) append
*1.1) классический

DATA my_struct LIKE LINE OF itab_1.

my_struct-name = 'Laura'.
my_struct-surname = 'Bianca'.

APPEND my_struct TO itab_1.

*1.2) new
*чтобы сохраниь предыдущие значения
itab_1 = VALUE #( base itab_1
                ( name = 'Igor1' surname = 'Ivanov')
                ( name = 'Igor2' surname = 'Ivanov')
                ( name = 'Igor3' surname = 'Ivanov')
                ).

APPEND VALUE #( name = 'Pavel' surname = 'Petrov' ) TO itab_1.

cl_demo_output=>display( itab_1 ).
