*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_AVLCALCULOS
*&---------------------------------------------------------------------*
TYPES:
  BEGIN OF TY_CALC,
    USUARIO   TYPE ZCALTAB606-USUARIO,
    CALCULO   TYPE ZCALTAB606-CALCULO,
    DESCRICAO TYPE ZCALOPTAB606-DESCRICAO,
    SIMBOLO   TYPE ZCALOPTAB606-SIMBOLO,
  END OF TY_calc.

* tabelas
DATA: GT_ITENS TYPE STANDARD TABLE OF TY_CALC.

*tipos ALV
TYPE-POOLS: SLIS.
DATA: GT_FIELDCAT TYPE SLIS_T_FIELDCAT_ALV.


START-OF-SELECTION.
  PERFORM F_SELECIONAR_DADOS.
  PERFORM F_MONTA_TABELA_ALV.
  PERFORM F_EXIBE_ALV.

FORM F_SELECIONAR_DADOS.
  SELECT
    ZCALTAB606~USUARIO
    ZCALTAB606~CALCULO
    ZCALOPTAB606~DESCRICAO
    ZCALOPTAB606~SIMBOLO
  FROM ZCALTAB606
    INNER JOIN ZCALOPTAB606 ON ZCALTAB606~OPERACAOID = ZCALOPTAB606~ID
    INTO TABLE GT_ITENS.
ENDFORM.
FORM F_MONTA_TABELA_ALV.

  DATA: LS_FIELDCAT TYPE SLIS_FIELDCAT_ALV.
  LS_FIELDCAT-FIELDNAME = 'USUARIO'.
  LS_FIELDCAT-TABNAME = 'GT_ITENS'.
  LS_FIELDCAT-REPTEXT_DDIC = 'Usúario do sistema'.
  APPEND LS_FIELDCAT TO GT_FIELDCAT.
  CLEAR LS_FIELDCAT.
  LS_FIELDCAT-FIELDNAME = 'CALCULO'.
  LS_FIELDCAT-TABNAME = 'GT_ITENS'.
  LS_FIELDCAT-REPTEXT_DDIC = 'Calcúlo Efetuado'.
  APPEND LS_FIELDCAT TO GT_FIELDCAT.
  CLEAR LS_FIELDCAT.
  LS_FIELDCAT-FIELDNAME = 'DESCRICAO'.
  LS_FIELDCAT-TABNAME = 'GT_ITENS'.
  LS_FIELDCAT-REPTEXT_DDIC = 'Descrição'.
  APPEND LS_FIELDCAT TO GT_FIELDCAT.
  CLEAR LS_FIELDCAT.
  LS_FIELDCAT-FIELDNAME = 'SIMBOLO'.
  LS_FIELDCAT-TABNAME = 'GT_ITENS'.
  LS_FIELDCAT-REPTEXT_DDIC = 'Simbolo'.
  APPEND LS_FIELDCAT TO GT_FIELDCAT.
  CLEAR LS_FIELDCAT.

ENDFORM.

FORM F_EXIBE_ALV.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      IT_FIELDCAT   = GT_FIELDCAT
      I_DEFAULT     = 'X'
      I_SAVE        = 'A'
    TABLES
      T_OUTTAB      = GT_ITENS
    EXCEPTIONS
      PROGRAM_ERROR = 1
      OTHERS        = 2.


ENDFORM.
