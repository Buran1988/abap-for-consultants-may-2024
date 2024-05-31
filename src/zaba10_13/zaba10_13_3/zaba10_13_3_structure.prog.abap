*&---------------------------------------------------------------------*
*& Report ZABA10_13_3_STRUCTURE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_3_STRUCTURE.

*Выбор по всех колонок таблицы
*DATA wa_scarr TYPE scarr.
*
*SELECT SINGLE * FROM scarr WHERE carrid = 'LH' INTO @wa_scarr.
*
*WRITE wa_scarr-carrname.

*Выбор по конкртеным колонкам для повышения ресурсоемкости.
DATA wa1_scarr TYPE scarr.

PARAMETERS pa_id TYPE s_carr_id.

SELECT SINGLE carrid, carrname, currcode FROM scarr WHERE carrid = @pa_id
INTO CORRESPONDING FIELDS OF @wa1_scarr.

WRITE wa1_scarr-carrname.
