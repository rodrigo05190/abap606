*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_CALCULAR_RESULTADO
*&---------------------------------------------------------------------*

FORM CALCULAR_RESULTADO USING OPERACAO P_VALOR1 P_VALOR2 RESULTADO.

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
