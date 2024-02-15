*&---------------------------------------------------------------------*
*& Report Z_PROG_RODRIGO_PRINT_DATA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_PROG_RODRIGO_PRINT_DATA.

"DECLARANDO VARIAVEIS"

DATA: nome     TYPE string,
      cidade   TYPE char10,
      estado   TYPE char2,
      endereco TYPE string,
      cep      TYPE string.


"IMPRIMINDO DADOS"

nome = 'RODRIGO LIMA'.
cidade = 'SÃO PAULO'.
estado = 'SP'.
endereco = 'RUA CALIXTO GARCIA, 101'.
cep = '05366190'.

WRITE :/ 'NOME:', nome,
        / 'ENDEREÇO:', endereco,
        / 'CIDADE:', cidade,
        / 'ESTADO:', estado.
