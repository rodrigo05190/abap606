REPORT ZCALCULADORA606.

INCLUDE ZINCLUDE_ENVIAREMAIL.           " Módulo para envio de e-mail
INCLUDE ZINCLUDE_DROPDOWNOPERACOES.     " Módulo para construir dropdown de operações
INCLUDE ZINCLUDE_INSERIRCALCULO.        " Módulo para inserir cálculo no banco de dados
INCLUDE ZINCLUDE_CALCULAR_RESULTADO.    " Módulo para calcular o resultado da operação
INCLUDE ZINCLUDE_OBTEROPERACAO.         " Módulo para obter a operação a partir do símbolo
INCLUDE ZINCLUDE_IMPRMIR_RESULTADO.     " Módulo para imprimir o resultado na tela .


DATA: RESULTADO           TYPE I,         " Variável para armazenar o resultado
      OPERACAOCONCATENADA TYPE STRING,    " Variável para armazenar a operação em formato de string
      USUARIOSISTEMA      TYPE STRING,    " Variável para armazenar o nome do usuário no sistema
      USUARIOEMAIL        TYPE STRING,    " Variável para armazenar o e-mail do usuário
      OPSIMBOLOBANCO      TYPE STRING.    " Variável para armazenar o símbolo da operação no banco

SELECTION-SCREEN BEGIN OF BLOCK BLOCO1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: P_EMAIL      TYPE C LENGTH 50 OBLIGATORY,   " Parâmetro para inserção do e-mail
              P_VALOR1     TYPE I OBLIGATORY,            " Parâmetro para inserção do primeiro valor numérico
              P_VALOR2     TYPE I OBLIGATORY,            " Parâmetro para inserção do segundo valor numérico
              OPERACAO(40) AS LISTBOX VISIBLE LENGTH 40. " Lista de operações para seleção
SELECTION-SCREEN END OF BLOCK BLOCO1.

INITIALIZATION.
  OPERACAO = '1'.                    " Define operação padrão ao iniciar o programa
  USUARIOSISTEMA = SY-UNAME.        " Obtém o nome do usuário no sistema

AT SELECTION-SCREEN.

  IF P_EMAIL EQ ''.
    MESSAGE 'E-mail obrigatório.' TYPE 'E'.    " Mensagem de erro se o e-mail estiver em branco
  ELSE.
    USUARIOEMAIL = P_EMAIL.
  ENDIF.

  IF OPERACAO EQ ''.
    MESSAGE 'Escolha a forma de operação' TYPE 'E'.    " Mensagem de erro se a operação não for escolhida
  ENDIF.

  IF OPERACAO EQ 3 AND ( P_VALOR1 = 0 OR P_VALOR2 = 0 ).
    MESSAGE 'Divisão por zero não permitida' TYPE 'E'.    " Mensagem de erro se houver divisão por zero
  ENDIF.

AT SELECTION-SCREEN OUTPUT.
  PERFORM DROPDOWNOPERACOES USING OPERACAO.    " Chama o módulo para construir o dropdown de operações

* Lógica principal
START-OF-SELECTION.

  PERFORM OBTEROPERACAO USING OPERACAO OPSIMBOLOBANCO.          " Obtém o símbolo da operação no banco

  PERFORM CALCULAR_RESULTADO USING P_VALOR1 P_VALOR2 RESULTADO OPERACAO.    " Calcula o resultado da operação

  PERFORM INSERIRCALCULO USING OPSIMBOLOBANCO P_VALOR1 P_VALOR2 RESULTADO USUARIOSISTEMA OPERACAOCONCATENADA OPERACAO.
                                                                         " Insere o cálculo no banco de dados
  PERFORM IMPRIMIR_RESULTADO USING RESULTADO.    " Imprime o resultado na tela

  PERFORM ENVIAREMAIL USING USUARIOSISTEMA OPERACAO OPERACAOCONCATENADA USUARIOEMAIL.    " Envia e-mail com informações relevantes

  PERFORM OBTEROPERACAO USING OPERACAO OPSIMBOLOBANCO.    " Obtém novamente o símbolo da operação no banco

  INCLUDE ZINCLUDE_AVLCALCULOS. " Módulo Montar ALV
