*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo17
*&---------------------------------------------------------------------*
*& Escreva um algoritmo que exiba 20 vezes a mensagem “Eu gosto de estudar ABAP!”.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO17.

DATA: MENSAGEM TYPE STRING VALUE 'Eu gosto de estudar ABAP! Quero muito um oportunidade! Aceito até trabalhar de graça.',
      REPETICAO TYPE I VALUE 20.

DO REPETICAO TIMES.
    WRITE : / MENSAGEM.
ENDDO.
