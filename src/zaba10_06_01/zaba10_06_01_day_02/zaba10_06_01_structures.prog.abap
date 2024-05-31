*&---------------------------------------------------------------------*
*& Report ZABA10_06_01_STRUCTURES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_01_structures.

DATA wa_scarr TYPE scarr.

DATA wa_sfli TYPE spfli.

PARAMETERS pa_id TYPE S_CARR_ID.

SELECT SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id INTO CORRESPONDING FIELDS OF @wa_scarr.

MOVE-CORRESPONDING  wa_scarr to wa_sfli.

WRITE wa_scarr-carrname.
