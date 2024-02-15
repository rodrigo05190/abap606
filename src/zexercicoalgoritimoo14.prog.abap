*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo14
*&---------------------------------------------------------------------*
*& Elabore um algoritmo que leia dois números inteiros e mostre o resultado da diferença do maior valor
*& pelo menor.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO14.

DATA: DIFERENCA TYPE I.

PARAMETERS: p_valor1 TYPE i,   " Parâmetro para o primeiro valor
            p_valor2 TYPE i.   " Parâmetro para o segundo valor

IF p_valor1 > p_valor2.
    DIFERENCA = p_valor1 - p_valor2.   " Calcula a diferença se p_valor1 for maior que p_valor2
    WRITE: / 'Diferença:', DIFERENCA.
ELSE.
    DIFERENCA = p_valor2 - p_valor1.   " Calcula a diferença se p_valor2 for maior ou igual a p_valor1
    WRITE: / 'Diferença:', DIFERENCA.
ENDIF.
