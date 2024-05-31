*&---------------------------------------------------------------------*
*& Report ZABA10_X12_EXAMPLES4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_X12_EXAMPLES4.


*40
*START-OF-SELECTION.
*DATA v_result TYPE i.
*v_result = 2 + 3 * 5.
*WRITE v_result.

*41 var
*DATA v_number_a TYPE i.
*DATA v_number_b LIKE v_number_a VALUE 2.
*DATA v_result TYPE f.
*
*START-OF-SELECTION.
*v_number_a = 5.
*v_result = v_number_a + v_number_b.
*WRITE: '+:', v_result EXPONENT 0 .
*NEW-LINE.
*v_result = v_number_a - v_number_b.
*WRITE: '-:', v_result.
*NEW-LINE.
*v_result = v_number_a * v_number_b.
*WRITE: '*:', v_result.
*NEW-LINE.
*v_result = v_number_a / v_number_b.
*WRITE: '/:', v_result.
*NEW-LINE.
*v_result = v_number_a ** v_number_b.
*WRITE: 'e:', v_result.

*42 parametr
*PARAMETERS p_num_a TYPE i.
*PARAMETERS p_num_b LIKE p_num_a DEFAULT 2.
*DATA v_result TYPE f.
*
*START-OF-SELECTION.
*p_num_a = 5.
*v_result = p_num_a + p_num_b.
*WRITE: '+:', v_result EXPONENT 0 .
*NEW-LINE.
*v_result = p_num_a - p_num_b.
*WRITE: '-:', v_result.
*NEW-LINE.
*v_result = p_num_a * p_num_b.
*WRITE: '*:', v_result.
*NEW-LINE.
*v_result = p_num_a / p_num_b.
*WRITE: '/:', v_result.
*NEW-LINE.
*v_result = p_num_a ** p_num_b.
*WRITE: 'e:', v_result.

*43
*CONSTANTS c_abap TYPE c LENGTH 4 VALUE 'ABAP'.
*DATA v_whole_text TYPE string.
*
*START-OF-SELECTION.
*CONCATENATE c_abap '101' INTO v_whole_text .
*WRITE v_whole_text.

*44

*45
DATA v_day TYPE string.
DATA v_month TYPE string.
DATA v_year TYPE string.

START-OF-SELECTION.
CASE sy-datum+4(2).
WHEN '01'.
v_month = 'Январь'.
WHEN '02'.
v_month = 'Февраль'.
WHEN '03'.
v_month = 'Март'.
WHEN '04'.
v_month = 'Апрель'.
WHEN '05'.
v_month = 'Май'.
WHEN '06'.
v_month = 'Июнь'.
WHEN '07'.
v_month = 'Июль'.
WHEN '08'.
v_month = 'Август'.
WHEN '09'.
v_month = 'Сентябрь'.
WHEN '10'.
v_month = 'Октябрь'.
WHEN '11'.
v_month = 'Ноябрь'.
WHEN '12'.
v_month = 'Декабрь'.
ENDCASE.
* Handle day
IF sy-datum+6(2) = '01'.
v_day = 'первое'.
ELSEIF sy-datum+6(2) = '02'.
v_day = 'второе'.
ELSEIF sy-datum+6(2) = '03'.
v_day = 'третье'.
ELSE.

IF sy-datum+6(2) BETWEEN 04 AND 19.
CASE sy-datum+6(2).
WHEN '04'.
v_day = 'четыре'.
WHEN '05'.
v_day = 'fif'.
WHEN '06'.
v_day = 'six'.
WHEN '07'.
v_day = 'seven'.
WHEN '08'.
v_day = 'eigh'.
WHEN '09'.
v_day = 'nin'.
WHEN '10'.
v_day = 'ten'.
WHEN '11'.
v_day = 'eleven'.
WHEN '12'.
v_day = 'twelf'.
WHEN '13'.
v_day = 'thirteen'.
WHEN '14'.
v_day = 'fourteen'.
WHEN '15'.
v_day = 'fitteen'.
WHEN '16'.
v_day = 'sixteen'.
WHEN '17'.
v_day = 'seventeen'.
WHEN '18'.
v_day = 'eighteen'.
WHEN '19'.
v_day = 'nineteen'.
ENDCASE.
CONCATENATE v_day 'th' INTO v_day.
ELSE.
CASE sy-datum+6(2). " 20-31
WHEN '20'.
v_day = 'twentieth'.
WHEN '21'.
v_day = 'twenty-first'.
WHEN '22'.
v_day = 'twenty-second'.
WHEN '23'.
v_day = 'twenty-third'.
WHEN '24'.
v_day = 'twenty-fourth'.
WHEN '25'.
v_day = 'двадцать пятое'.
WHEN '26'.
v_day = 'двадцать щестое'.
WHEN '27'.
v_day = 'двадцать седьмое'.
WHEN '28'.
v_day = 'двадцать восьмое'.
WHEN '29'.
v_day = 'двадцать девятое'.
WHEN '30'.
v_day = 'тридцатое'.
WHEN '31'.
v_day = 'тридцать первое'.
ENDCASE.
ENDIF.
ENDIF.

v_year = sy-datum(4).

WRITE: v_day, ', ', v_month, '   ', v_year, 'год'.
NEW-LINE.
