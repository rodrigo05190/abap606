*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_3
*&---------------------------------------------------------------------*
*&  Para uma venda de R$2.500,00, calcule o valor de icms de 18% e Fundo de Combate a Pobreza de 2%
*&para ser impresso no recibo
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_3.


DATA: VENDA TYPE P DECIMALS 2,
      ICMS TYPE P DECIMALS 2,
      FCP TYPE P DECIMALS 2.

DATA valor_icms TYPE p DECIMALS 2.
DATA valor_fcp TYPE p DECIMALS 2.


VENDA = '2500.00'.
ICMS = '0.18'.
FCP =  '0.02'.

valor_icms = VENDA * ICMS.
valor_fcp = VENDA * FCP.

* Exibindo os resultados
WRITE: / 'Valor da Venda:', VENDA,
       / 'Valor do ICMS (18%):', valor_icms,
       / 'Valor do FCP (2%):', valor_fcp.
