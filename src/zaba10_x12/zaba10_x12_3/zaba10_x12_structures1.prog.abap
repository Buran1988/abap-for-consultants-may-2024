*&---------------------------------------------------------------------*
*& Report ZABA10_X12_STRUCTURES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_STRUCTURES1.

data wa_scarr type scarr.

*SELECT SINGLE * from scarr WHERE carrid = 'LH' into @wa_scarr.
*SELECT SINGLE carrid, carrname from scarr WHERE carrid = 'LH' into @wa_scarr.
*SELECT SINGLE carrid, carrname from scarr WHERE carrid = 'LH' into CORRESPONDING FIELDS OF @wa_scarr.

PARAMETERS pa_id TYPE S_CARR_ID.

SELECT SINGLE carrid, carrname from scarr
  WHERE carrid = @pa_id
  into CORRESPONDING FIELDS OF @wa_scarr.

data wa_sfli type spfli.
MOVE-CORRESPONDING wa_scarr to wa_sfli.


WRITE wa_scarr-carrname.
