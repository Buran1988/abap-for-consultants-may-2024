*&---------------------------------------------------------------------*
*& Report ZABA10_X12_EXAMPLES3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_EXAMPLES3.

TYPES table_type_with_number TYPE TABLE OF i.

DATA odd_numbers TYPE table_type_with_number.
DATA even_numbers TYPE table_type_with_number.

START-OF-SELECTION.

APPEND: 1 TO odd_numbers,
        3 TO odd_numbers,
        5 TO odd_numbers,
        7 TO odd_numbers,
        9 TO odd_numbers.
APPEND: 2 TO even_numbers,
        4 TO even_numbers,
        6 TO even_numbers,
        8 TO even_numbers,
        10 TO even_numbers.
