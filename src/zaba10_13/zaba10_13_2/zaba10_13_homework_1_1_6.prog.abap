*&---------------------------------------------------------------------*
*& Report ZABA10_13_HOMEWORK_1_1_6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_13_HOMEWORK_1_1_6.

DATA my_var TYPE c LENGTH 10.

DATA my_var1 TYPE i.

DATA my_date TYPE d.

DATA my_time TYPE t.

TYPES my_n_type TYPE n LENGTH 7.
DATA my_num_var TYPE my_n_type.

my_var = '1234567890'.

my_var1 = 240.

my_date = sy-datum.

my_time = sy-uzeit.

my_num_var = 1234567.

WRITE / my_var.

WRITE / my_num_var.

Write /  |{ my_date DATE = ISO }|.

Write |{ my_time time = ISO }|.

WRITE  / my_var1 COLOR COL_HEADING.

TYPES: BEGIN OF st_my_structure,
  my_var TYPE c LENGTH 10,
  my_var1 TYPE i,
  my_date TYPE d,
  my_time TYPE t,
  my_num_var TYPE my_n_type,
  END OF st_my_structure.

DATA wa_my_structure TYPE st_my_structure.
wa_my_structure-my_var = '1234567890'.

wa_my_structure-my_var1 = 240.

wa_my_structure-my_date = sy-datum.

wa_my_structure-my_time = sy-uzeit.

wa_my_structure-my_num_var = 1234567.

WRITE: / wa_my_structure-my_var COLOR COL_TOTAL,
wa_my_structure-my_var1 COLOR COL_TOTAL,
|{ wa_my_structure-my_date DATE = ISO }| COLOR COL_TOTAL,
|{ wa_my_structure-my_time time = ISO }| COLOR COL_TOTAL,
wa_my_structure-my_num_var COLOR COL_TOTAL.
