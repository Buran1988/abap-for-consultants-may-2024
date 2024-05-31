*&---------------------------------------------------------------------*
*& Report ZABA10_01_STRUCTURES_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_structures_03.
DATA wa_scarr TYPE scarr.
DATA wa_sfli TYPE spfli.


PARAMETERS pa_id TYPE s_carr_id.

SELECT SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id
  INTO CORRESPONDING FIELDS OF @wa_scarr
  .

MOVE-CORRESPONDING wa_scarr TO wa_sfli.
WRITE wa_scarr-carrname.
