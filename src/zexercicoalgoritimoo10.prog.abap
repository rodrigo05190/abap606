*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo10
*&---------------------------------------------------------------------*
*& Faça um algoritmo para receber um número qualquer e informar na tela se é par ou ímpar
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO10.

SELECTION-SCREEN BEGIN OF BLOCK bloco1 WITH FRAME TITLE text-001.
    PARAMETERS: P_VALOR TYPE I.
SELECTION-SCREEN END OF BLOCK bloco1.

DATA: divisor TYPE I VALUE 2,
      RESTO TYPE I.


RESTO = P_VALOR MOD divisor.


IF  RESTO = 0.
    WRITE: 'Esse Número digitado ',P_VALOR,' é par!' .
ELSE.
    WRITE: 'Esse Número digitado ',P_VALOR,' é impar!' .
ENDIF.
