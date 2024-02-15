*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_OBTEROPERACAO
*&---------------------------------------------------------------------*

FORM OBTEROPERACAO USING OPERACAO OPSIMBOLOBANCO.
  SELECT SINGLE SIMBOLO FROM ZCALOPTAB606 WHERE ID = @OPERACAO INTO @OPSIMBOLOBANCO.
ENDFORM.
