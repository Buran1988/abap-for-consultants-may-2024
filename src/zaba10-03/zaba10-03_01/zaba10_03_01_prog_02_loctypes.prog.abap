*&---------------------------------------------------------------------*
*& Report ZABA10_03_01_PROG_02_LOCTYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_03_01_PROG_02_LOCTYPES.

TYPES S_TYPE_ADV type c length 8.

DATA new_var_adv type S_TYPE_ADV.

TYPES N_TYPE_ADV type N length 5.

DATA new_num_adv type N_TYPE_ADV.

new_num_adv = 123456.

TYPES C_TYPE_ADV(8) type c.

DATA new_c_adv type C_TYPE_ADV.

*TYPES P_TYPE_ADV type p length 3 decimals 2.

*DATA new_percent_adv type P_TYPE_ADV.

DATA new_percent_adv type Z_ADV_PERCENT.

new_percent_adv = '99.99'.

data airport_from TYPE spfli-airpfrom.

airport_from = 'DOMO'.

WRITE 'Saint - Gobain' && airport_from.
