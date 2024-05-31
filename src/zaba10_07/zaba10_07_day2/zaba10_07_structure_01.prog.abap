*&---------------------------------------------------------------------*
*& Report ZABA10_07_STRUCTURE_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_structure_01.

DATA wa_scar TYPE scarr.
DATA wa_sfli TYPE spfli.

PARAMETERS pa_id TYPE s_carr_id.

SELECT SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id
into CORRESPONDING FIELDS OF @wa_scar.

MOVE-CORRESPONDING wa_scar to wa_sfli.

WRITE wa_scar-carrname.
