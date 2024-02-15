*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_2
*&---------------------------------------------------------------------*
*& Informar os 3 últimos preços usados na compra de um material e calcular o preço médio do material,
*& para ser usado como informação na cotação com fornecedores.
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_2.

*definicao de campos de tela
SELECTION-SCREEN BEGIN OF BLOCK bloco1 WITH FRAME TITLE text-001.
PARAMETERS: P_PRECO1      TYPE P DECIMALS 2,
            P_PRECO2      TYPE P DECIMALS 2,
            P_PRECO3      TYPE P DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bloco1.
DATA : MEDIA           TYPE P DECIMALS 2.

MEDIA = ( P_PRECO1 + P_PRECO2 + P_PRECO3 ) * 3.

* Exibição dos resultados
WRITE: / 'Preço 1:', P_PRECO1 CURRENCY 'BRL',
       / 'Preço 2:', P_PRECO2 CURRENCY 'BRL',
       / 'Preço 3:', P_PRECO3 CURRENCY 'BRL',
       / 'Preço Médio:', MEDIA CURRENCY 'BRL'.
