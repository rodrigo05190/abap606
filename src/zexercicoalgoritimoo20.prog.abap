*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo20
*&---------------------------------------------------------------------*
*& Leia o nome e a idade de 10 pessoas e exiba o nome da pessoa mais nova.
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO20.

DATA: CONTADOR           TYPE I,
      LIMIT              TYPE I,
      NOME_MAIS_NOVO(40) TYPE C,
      IDADE_MAIS_NOVA    TYPE I VALUE 100.

DATA: BEGIN OF S_NOME,
        NOME(40) TYPE C,
        IDADE    TYPE I,
      END OF  S_NOME.

DATA: T_NOMES LIKE TABLE OF S_NOME.

S_NOME-NOME = 'Rodrigo'.
S_NOME-IDADE = 38.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Suelem'.
S_NOME-IDADE = 34.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Giovanna'.
S_NOME-IDADE = 13.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Nickoly'.
S_NOME-IDADE = 7.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Sinésio'.
S_NOME-IDADE = 72.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Sinésio Junior'.
S_NOME-IDADE = 50.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Vandira'.
S_NOME-IDADE = 78.
APPEND S_NOME TO T_NOMES.

S_NOME-NOME = 'Marcu'.
S_NOME-IDADE = 18.
APPEND S_NOME TO T_NOMES.


S_NOME-NOME = 'Thor'.
S_NOME-IDADE = 4.
APPEND S_NOME TO T_NOMES.


S_NOME-NOME = 'Mel'.
S_NOME-IDADE = 2.
APPEND S_NOME TO T_NOMES.


CONTADOR = 1.
LIMIT = LINES( T_NOMES ).

WHILE CONTADOR <= LIMIT.
  READ TABLE T_NOMES INDEX CONTADOR INTO S_NOME.
  IF SY-SUBRC = 0.
    " Exibindo informações
    WRITE: / 'Nome:', S_NOME-NOME, 'Idade:', S_NOME-IDADE.
    " Verificando se a idade é menor que a idade mais nova atual
    IF S_NOME-IDADE < IDADE_MAIS_NOVA.
      NOME_MAIS_NOVO = S_NOME-NOME.
      IDADE_MAIS_NOVA = S_NOME-IDADE.
    ENDIF.
  ENDIF.
  CONTADOR = CONTADOR + 1.
ENDWHILE.
" Exibindo o nome da pessoa mais nova
WRITE: / 'A pessoa mais nova é:', NOME_MAIS_NOVO, ' com idade de:', IDADE_MAIS_NOVA.
