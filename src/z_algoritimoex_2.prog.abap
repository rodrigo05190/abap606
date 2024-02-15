*&---------------------------------------------------------------------*
*& Report z_algoritimoex
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_ALGORITIMOEX_2.

DATA: TAXA_DESCONTO TYPE P DECIMALS 2.
DATA: TAXA_IMPOSTO TYPE P DECIMALS 2.

PARAMETERS: P_DESC(30) TYPE C,
            P_QTD      TYPE I,
            P_CAT(2)   TYPE C.


*IF P_QTD = 0.
*  MESSAGE 'INFORME A QUANTIDADE' TYPE 'I'.
*  RETURN.
*ELSEIF P_QTD > 10.
*  TAXA_DESCONTO = '0.15'.
*ELSEIF P_QTD < 10 AND P_MARCA = 'X'.
*  TAXA_DESCONTO = '0.10'.
*ELSE.
*  TAXA_DESCONTO = '0.05'.
*ENDIF.

CASE P_CAT.

  WHEN '01'.
    TAXA_IMPOSTO = '0.18'.
  WHEN '02'.
    TAXA_IMPOSTO = '0.12'.
  WHEN OTHERS.
    TAXA_IMPOSTO = '0.20'.

ENDCASE.


WRITE:
/ 'DESCRICAO', 30 P_DESC,
/ 'QUANTIDADE', 30 P_QTD,
/ 'CATEGORIA', 30 P_CAT,
/ 'TAXA DESCONTO', 30 TAXA_DESCONTO.
