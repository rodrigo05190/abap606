*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_5
*&---------------------------------------------------------------------*
*& Para fabricar um motor são necessárias 4 bobinas. Calcule quantas bobinas são necessárias para fabricar
*& 32 motores.
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_5.


DATA: BOBINAS TYPE I,
      MOTORES TYPE I,
      TOTAL TYPE I.


BOBINAS = 4.
MOTORES = 32.
TOTAL = BOBINAS * MOTORES.

WRITE:
  / 'Quantidade de Bobinas:', BOBINAS,
  / 'Quantidade de Motores:', MOTORES,
  / 'Total Necessário para Fabricação:', TOTAL.
