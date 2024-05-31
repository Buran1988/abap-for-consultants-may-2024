*&---------------------------------------------------------------------*
*& Report ZABA10_99_STRUCTURES_100
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_STRUCTURES_100.

data wa_scarr type scarr.

data wa_sfli type spfli.

PARAMETERS pa_id TYPE S_CARR_ID.

select SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id
  INTO CORRESPONDING FIELDS OF @wa_scarr
  .

MOVE-CORRESPONDING wa_scarr TO wa_sfli.

WRITE wa_scarr-carrname.
