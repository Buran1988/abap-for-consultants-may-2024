*&---------------------------------------------------------------------*
*& Report ZABA10_03_01_PROG_02_DATATYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_01_PROG_02_DATATYPES.

data data_adv TYPE d.
data time_adv TYPE t.
data CARRID TYPE SFLIGHT.



data_adv = SY-DATUM.
time_adv = SY-UZEIT.

write | Дата { data_adv DATE = USER } |.
write | Время {  time_adv TIME = ISO } |.
