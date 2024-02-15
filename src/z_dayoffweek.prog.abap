REPORT ZPROG_RODRIGO_CONDICAO.

DATA: date TYPE D,
      day_of_week TYPE i,
      formatted_date TYPE string,
      week_name TYPE string.

date = SY-DATUM.

day_of_week = ( date - '00000001' ) MOD 7.

formatted_date = |{ date+6(2) }/{ date+4(2) }/{ date(4) }|.

CASE day_of_week.
  WHEN 0.
    week_name = 'Domingo'.
  WHEN 1.
    week_name = 'Segunda-feira'.
  WHEN 2.
    week_name = 'Terça-feira'.
  WHEN 3.
    week_name = 'Quarta-feira'.
  WHEN 4.
    week_name = 'Quinta-feira'.
  WHEN 5.
    week_name = 'Sexta-feira'.
  WHEN 6.
    week_name = 'Sábado'.
  WHEN OTHERS.
    week_name = 'Dia não reconhecido'.
ENDCASE.


WRITE: / 'Data Atual:', formatted_date,
       / 'Dia da Semana:', week_name.
