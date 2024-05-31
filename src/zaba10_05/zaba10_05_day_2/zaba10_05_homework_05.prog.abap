*&---------------------------------------------------------------------*
*& Report ZABA10_05_HOMEWORK_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_HOMEWORK_05.

DATA:
    type1 TYPE c LENGTH 10,
    type2 TYPE n,
    type3 TYPE n LENGTH 7,
    type4 TYPE d,
    type5 TYPE n,

    BEGIN OF types_struct,
    type1 TYPE c LENGTH 10,
    type2 TYPE n,
    type3 TYPE n LENGTH 7,
    type4 TYPE d,
    type5 TYPE n,
      END OF types_struct.
      BREAK-POINT.

      type3 =  2 + 3 * 5.
      WRITE type3.
