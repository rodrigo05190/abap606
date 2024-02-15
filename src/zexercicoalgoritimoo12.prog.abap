*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo12
*&---------------------------------------------------------------------*
*& Escreva um algoritmo que lê dois valores booleanos (lógicos) e então determina se ambos são
*& VERDADEIROS ou FALSOS.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO12.

DATA: GV_CHECKBOX1     TYPE ABAP_BOOL,
      GV_CHECKBOX2     TYPE ABAP_BOOL,
      GV_RESULTADO(50) TYPE C.


PARAMETERS: P_CKBOX1 AS CHECKBOX DEFAULT 0,
            P_CKBOX2 AS CHECKBOX DEFAULT 0.

IF P_CKBOX1 = ABAP_TRUE AND P_CKBOX2 = ABAP_TRUE.
  GV_RESULTADO = 'Os dois são verdadeiros'.
ELSEIF P_CKBOX1 = ABAP_FALSE AND P_CKBOX2 = ABAP_FALSE.
  GV_RESULTADO = 'Os dois são falsos'.
ELSE.
  GV_RESULTADO = 'Falso ou Verdadeiro'.
ENDIF.

* Exibe o resultado
WRITE: / 'Resultado:', GV_RESULTADO.
