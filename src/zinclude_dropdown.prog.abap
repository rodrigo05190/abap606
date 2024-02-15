*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_DROPDOWN
*&---------------------------------------------------------------------*

DATA: OPERATION TYPE VRM_ID,
      LIST      TYPE VRM_VALUES,
      VALUE     LIKE LINE OF LIST.

FORM BUILD_DROPDOWN.

  OPERATION = 'OPERACAO'.

  VALUE-KEY = '01'.
  VALUE-TEXT = 'SOMA'.
  APPEND VALUE TO LIST.

  VALUE-KEY = '02'.
  VALUE-TEXT = 'SUBTRAÇÃO'.
  APPEND VALUE TO LIST.

  VALUE-KEY = '03'.
  VALUE-TEXT = 'DIVISÃO'.
  APPEND VALUE TO LIST.

  VALUE-KEY = '04'.
  VALUE-TEXT = 'MULTIPLICAÇÃO'.
  APPEND VALUE TO LIST.

CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      ID     = OPERATION
      VALUES = LIST.

ENDFORM.
