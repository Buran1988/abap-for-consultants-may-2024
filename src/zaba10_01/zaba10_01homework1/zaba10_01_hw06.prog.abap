*&---------------------------------------------------------------------*
*& Report ZABA10_01_HW06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT zaba10_01_HW06.

TYPES customer_name TYPE c LENGTH 10.
DATA number_of_orders TYPE i.
TYPES number_of_znd  TYPE n LENGTH 7.
TYPES cust_num4 TYPE d.
TYPES last_min TYPE t.

TYPES: BEGIN OF customer_structure01,
         customer_name    TYPE c LENGTH 10,
         number_of_orders TYPE i,
         number_of_znd    TYPE n LENGTH 7,
         cust_num4        TYPE d,
         last_min         TYPE t,
       END OF customer_structure01.
