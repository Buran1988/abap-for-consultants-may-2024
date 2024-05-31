*&---------------------------------------------------------------------*
*& Report ZABA10_09_STRUCTURES_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_STRUCTURES_100.
DATA wa_scarr type scarr.
PARAMETERS pa_id TYPE S_CARR_ID.

*select SINGLE * FROM scarr where carrid = @pa_id Можно как ниже использовать название полей вместое *
select SINGLE carrid, carrname, currcode FROM scarr where carrid = @pa_id
  INTO CORRESPONDING FIELDS OF @wa_scarr
  .

  WRITE wa_scarr-carrname.
