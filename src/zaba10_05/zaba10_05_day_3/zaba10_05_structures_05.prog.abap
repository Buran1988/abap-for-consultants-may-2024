*&---------------------------------------------------------------------*
*& Report ZABA10_05_STRUCTURES_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_STRUCTURES_05.


DATA wa_scarr type scarr.

select  SINGLE * FROM scarr WHERE carrid = 'LH' INTO @wa_scarr.

  WRITE wa_scarr-carrname.
