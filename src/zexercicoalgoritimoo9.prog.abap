*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo9
*&---------------------------------------------------------------------*
*& Escreva um algoritmo que leia três valores inteiros e diferentes e mostre-os em ordem decrescente
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO9.

DATA: VALOR1 TYPE I,
            VALOR2 TYPE I,
            VALOR3 TYPE I,
            TEMP TYPE I.


SELECTION-SCREEN BEGIN OF BLOCK bloco1 WITH FRAME TITLE text-001.
PARAMETERS: P_VALOR1 TYPE I,
            P_VALOR2 TYPE I,
            P_VALOR3 TYPE I.
SELECTION-SCREEN END OF BLOCK bloco1.

VALOR1 = P_VALOR1.
VALOR2 = P_VALOR2.
VALOR3 = P_VALOR3.


IF VALOR1 > VALOR2 AND VALOR1 > VALOR3.
  " VALOR1 é o maior, então não precisa fazer nada
ELSEIF VALOR2 > VALOR1 AND VALOR2 > VALOR3.
  " Trocar VALOR1 e VALOR2
  TEMP = VALOR1.
  VALOR1 = VALOR2.
  VALOR2 = TEMP.
ELSE. " Neste ponto, VALOR3 é o maior
  " Trocar VALOR1 e VALOR3
  TEMP = VALOR1.
  VALOR1 = VALOR3.
  VALOR3 = TEMP.
  " Agora, verificar se VALOR2 é maior que VALOR3
  IF VALOR2 < VALOR3.
    " Trocar VALOR2 e VALOR3
    TEMP = VALOR2.
    VALOR2 = VALOR3.
    VALOR3 = TEMP.
  ENDIF.
ENDIF.

WRITE: / 'Valores em ordem decrescente:', VALOR1, VALOR2, VALOR3.
