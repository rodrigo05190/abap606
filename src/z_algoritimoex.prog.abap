*&---------------------------------------------------------------------*
*& Report z_algoritimoex
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_ALGORITIMOEX.

DATA: TAXA_DESCONTO TYPE P DECIMALS 2.

PARAMETERS: P_DESC(30) TYPE C,
            P_QTD      TYPE I,
            P_MARCA    TYPE BOOLEAN AS CHECKBOX.


IF P_QTD = 0.
  MESSAGE 'INFORME A QUANTIDADE' TYPE 'I'.
  RETURN.
ELSEIF P_QTD > 10.
  TAXA_DESCONTO = '0.15'.
ELSEIF P_QTD < 10 AND P_MARCA = 'X'.
  TAXA_DESCONTO = '0.10'.
ELSE.
  TAXA_DESCONTO = '0.05'.
ENDIF.



WRITE:
/ 'DESCRICAO', 30 P_DESC,
/ 'QUANTIDADE', 30 P_QTD,
/ 'MARCA PROPRIA', 30 P_MARCA,
/ 'TAXA DESCONTO', 30 TAXA_DESCONTO.
