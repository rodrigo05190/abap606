*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_7
*&---------------------------------------------------------------------*
*& Faça um algoritmo para ler o salário de um funcionário e aumentá-lo em 15%. Após o aumento, desconte
*& 8% de impostos. Imprima o salário inicial, o salário com o aumento e o salário final
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_7.


PARAMETERS: P_SAL TYPE P DECIMALS 2.

DATA:  AUMENTO TYPE p DECIMALS 2,
       IMPOSTO TYPE p DECIMALS 2,
       V_IMPOSTO  TYPE p DECIMALS 2,
       V_AUMENTO  TYPE p DECIMALS 2,
       V_FINAL  TYPE p DECIMALS 2.

AUMENTO = '0.15'.
IMPOSTO = '0.08'.

V_AUMENTO = P_SAL * AUMENTO.
V_IMPOSTO = ( P_SAL + AUMENTO ) * IMPOSTO.
V_FINAL = P_SAL + V_AUMENTO - V_IMPOSTO.


* Imprimir resultados
WRITE: / 'Salário Inicial: ', P_SAL,
       / 'Aumento (15%): ', V_AUMENTO,
       / 'Imposto (8%): ', V_IMPOSTO,
       / 'Salário Final: ', V_FINAL.
