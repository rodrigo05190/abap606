*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo19
*&---------------------------------------------------------------------*
*& Leia o nome do usuário e um número N e escreva o nome dele na tela N vezes.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO19.

PARAMETERS:USUARIO(30) TYPE C.

DATA: CONTADOR TYPE I VALUE 10.

DO CONTADOR TIMES.
    WRITE: / USUARIO.
ENDDO.

SKIP.
WRITE: / 'Esse nome foi repetido:', CONTADOR.
