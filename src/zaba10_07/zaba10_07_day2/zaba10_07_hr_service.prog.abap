*&---------------------------------------------------------------------*
*& Report ZABA10_07_HR_SERVICE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_HR_SERVICE.

DATA person_1 TYPE REF TO zaba10_07_person_01.
DATA person_2 TYPE REF TO zaba10_07_person_01.
DATA person_3 TYPE REF TO zaba10_07_person_01.
DATA registr_pers TYPE TABLE of REF TO zaba10_07_person_01.

CREATE OBJECT person_1.

person_1->name = 'Larisa'.
person_1->surname = 'Lazaridi'.
person_1->salary = '500'.

APPEND person_1 to registr_pers.

CREATE OBJECT person_2.

person_2->name = 'Alex'.
person_2->surname = 'Pushkin'.
person_2->salary = '700'.

APPEND person_2 to registr_pers.

CREATE OBJECT person_3.

person_3->name = 'Anna'.
person_3->surname = 'Karenina'.
person_3->salary = '900'.

APPEND person_3 to registr_pers.

LOOP at registr_pers INTO DATA(this_pers).
  this_pers->show_report( ).
ENDLOOP.
