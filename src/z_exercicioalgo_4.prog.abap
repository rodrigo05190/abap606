*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_4
*&---------------------------------------------------------------------*
*& Considerando um kit de natal de R$ 166,00 , calcule quantos kits podem ser comprados com R$ 10.000,00
*&para ser criado um documento de vendas
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_4.

DATA: KIT TYPE P DECIMALS 2,
      DINHEIRO TYPE P  DECIMALS 2,
      TOTAL TYPE i.

KIT = '166.00'.
DINHEIRO = '10000.00'.
TOTAL = TRUNC( DINHEIRO / KIT ).

WRITE: / 'Valor disponível:', DINHEIRO,
       / 'Valor do kit:', KIT,
       / 'Quantidade de kits que podem ser comprados:', TOTAL.
