*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_TABLES_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_02_TABLES_02.

data itab_1 type table of ZABA10_03_STRUCT02.
*
data itab_2 type Z_ABA1003_TABLE_02.
*
*cl_demo_output=>display( itab_1 ).


data my_struct like line of ITAB_2.

my_struct-name = 'Ваня'.
my_struct-surname = 'Иванов'.

ITAB_2 = VALUE #(
( name = 'Петр' surname = 'Петров' )
( name = 'Петр2' surname = 'Петров2' )
( name = 'Петр3' surname = 'Петров3' )
( name = 'Петр4' surname = 'Петров4' )
).

APPEND VALUE #( name = 'Семен' surname = 'Семенов' ) to ITAB_2 .

cl_demo_output=>display( ITAB_2 ).
