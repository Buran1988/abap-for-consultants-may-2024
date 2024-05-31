*&---------------------------------------------------------------------*
*& Report ZABA10_03_02_STRUCTURES_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_02_STRUCTURES_01.

data wa_scarr type scarr.

data wa_spfli type spfli.

PARAMETERS PA_ID TYPE S_CARR_ID.
*select single * FROM scarr WHERE CARRID = 'LH' INTO @wa_scarr.
*select single carrid, carrname, currcode FROM scarr WHERE CARRID = 'LH' INTO @wa_scarr.

*select single carrid, carrname, currcode FROM scarr WHERE CARRID = 'LH' INTO CORRESPONDING FIELDS OF @wa_scarr.

select single carrid, carrname, currcode FROM scarr WHERE CARRID = @PA_ID  INTO CORRESPONDING FIELDS OF @wa_scarr.

MOVE-CORRESPONDING wa_scarr to wa_spfli .

WRITE wa_scarr-carrname.
