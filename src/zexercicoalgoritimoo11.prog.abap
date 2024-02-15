*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo11
*&---------------------------------------------------------------------*
*& Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, imprimindo o
" resultado.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO11.

PARAMETERS: P_VALOR1 TYPE I.

DATA: RESULTADO TYPE I.


IF P_VALOR1 >= 0."Aqui positivo
  RESULTADO = P_VALOR1 * 2.
  WRITE: / 'O dobro do número é', resultado.

ELSE.
   " Número é negativo
  RESULTADO = P_VALOR1 * 3.
  WRITE: / 'O triplo do número é', resultado.
ENDIF.
