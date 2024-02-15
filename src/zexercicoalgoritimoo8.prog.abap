*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo8
*&---------------------------------------------------------------------*
*& Faça um algoritmo que leia os valores Quantidade, Preço, Limite e imprima na tela se a multiplicação de
*& Quantidade por Preço é menor que Limite
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO8.


PARAMETERS: P_QTD TYPE I,
            P_PRECO TYPE P DECIMALS 2,
            P_LIMITE TYPE P DECIMALS 2.

DATA: TOTAL TYPE I,
      LIMITE TYPE I.

TOTAL = P_QTD * P_PRECO.

IF ( TOTAL ) < LIMITE .
    WRITE :
    /'Quantidade:', P_QTD ,
    /'Preço:', P_PRECO ,
    /'A multiplicação é menor que o Limite'.
ELSEIF TOTAL = LIMITE.
     WRITE :
    /'Quantidade:', P_QTD ,
    /'Preço:', P_PRECO ,
    /'A multiplicação é igual ao Limite'.

ELSE.
    WRITE:
    /'Quantidade:', P_QTD ,
    /'Preço:', P_PRECO ,
    /'A multiplicação é maior que o Limite'.
ENDIF.
