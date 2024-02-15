*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo13
*&---------------------------------------------------------------------*
*& Elabore um algoritmo que leia do teclado o sexo de uma pessoa. Se o sexo digitado for M ou F ou O,
*& escrever na tela “Sexo válido!”. Caso contrário, informar “Sexo inválido!”;
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO13.


PARAMETERS: P_SEXO(1) TYPE C.

CASE P_SEXO.
 WHEN 'M' OR 'F' OR 'O'.
   MESSAGE 'Sexo válido!' TYPE 'I'.
 WHEN OTHERS.
   MESSAGE 'Sexo inválido!' TYPE 'I'.
ENDCASE.
