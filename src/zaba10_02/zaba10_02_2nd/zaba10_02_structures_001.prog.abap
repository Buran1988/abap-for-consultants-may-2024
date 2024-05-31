*&---------------------------------------------------------------------*
*& Report ZABA10_02_STRUCTURES_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_STRUCTURES_001.

DATA wa_scarr TYPE scarr.

DATA wa_sfli TYPE spfli.

PARAMETERS pa_id TYPE s_carr_id.

SELECT SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id
INTO CORRESPONDING FIELDS OF @wa_scarr.

MOVE-CORRESPONDING wa_scarr TO wa_sfli.

WRITE: wa_sfli-carrid,
       wa_scarr-carrname.
