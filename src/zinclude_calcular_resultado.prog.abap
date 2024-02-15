*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_CALCULAR_RESULTADO
*&---------------------------------------------------------------------*

FORM CALCULAR_RESULTADO USING P_VALOR1 P_VALOR2 RESULTADO OPERACAO.

  CASE OPERACAO.
    WHEN 2.
      RESULTADO = P_VALOR1 - P_VALOR2.
    WHEN 1.
      RESULTADO = P_VALOR1 + P_VALOR2.
    WHEN 3.
      RESULTADO = P_VALOR1 / P_VALOR2.
    WHEN 4.
      RESULTADO = P_VALOR1 * P_VALOR2.
    WHEN OTHERS.
  ENDCASE.
ENDFORM.
