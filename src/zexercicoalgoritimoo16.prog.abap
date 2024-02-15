*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo16
*&---------------------------------------------------------------------*
*&  Crie um algoritmo leia um número do usuário e exiba a sua tabuada de multiplicação.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO16.

PARAMETERS: NUMERO TYPE I.

DATA:
      TOTAL TYPE I,
      MULTIPLICADOR TYPE I.

DO 10 TIMES.
    MULTIPLICADOR = MULTIPLICADOR + 1.
    TOTAL = NUMERO * MULTIPLICADOR.
    WRITE: / NUMERO, 'X', MULTIPLICADOR, '=', TOTAL.
ENDDO.
