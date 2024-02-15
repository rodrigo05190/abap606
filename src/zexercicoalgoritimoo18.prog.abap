*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo18
*&---------------------------------------------------------------------*
*& Escreva um algoritmo que calcule a soma dos números de 1 a 15
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO18.


DATA: NUMERO TYPE I,
      SOMA   TYPE I.


DO 15 TIMES.
    NUMERO = NUMERO + 1.
    SOMA = SOMA + NUMERO.
    WRITE: / NUMERO.
ENDDO.

WRITE: / 'A soma dos números de 1 a 15 é:', SOMA.
