*&---------------------------------------------------------------------*
*& Report z_meuproduto
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_MEUPRODUTO.

DATA: MEMORIA   TYPE I,
      TELA      TYPE I,
      MARCA(10) TYPE C.

START-OF-SELECTION.

  MEMORIA = 8.
  TELA = 15.
  MARCA = 'DELL'.


  PERFORM EXIBIR_INFORMACOES.

FORM EXIBIR_INFORMACOES.
  WRITE: / 'Informações do Notebook',
         / '----------------------',
         / 'Memória:',30 MEMORIA LEFT-JUSTIFIED,  'GB',
         / 'Tela:', 30 TELA LEFT-JUSTIFIED, 'polegadas',
         / 'Marca:', 30 MARCA LEFT-JUSTIFIED.
ENDFORM.
