*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_1
*&---------------------------------------------------------------------*
*&Considerando o prazo de pagamento de 30 dias, informar uma data de venda e calcular a data de
*&vencimento para ser impressa no boleto. Exibir na tela as duas datas.
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_1.

DATA: PRAZO TYPE I,
      DT_VENDA TYPE D,
      DT_VENCIMENTO TYPE D.



PRAZO = 30.
DT_VENDA = SY-DATUM.


DT_VENCIMENTO = DT_VENDA + 30.

WRITE: / 'Data de Venda:', DT_VENDA DD/MM/YY,
       / 'Prazo de Pagamento (dias):', PRAZO,
       / 'Data de Vencimento:', DT_VENCIMENTO DD/MM/YY.
