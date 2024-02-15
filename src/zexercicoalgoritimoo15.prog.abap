*&---------------------------------------------------------------------*
*& Report zexercicoalgoritimoo15
*&---------------------------------------------------------------------*
*&- Elabore um algoritmo que calcule o que deve ser pago por um produto, considerando o preço normal de
*&  etiqueta e a escolha da condição de pagamento. Utilize os códigos da tabela a seguir para ler qual a
*&  condição de pagamento escolhida e efetuar o cálculo adequado.
*&  Código Condição de pagamento
*&  1 - À vista em dinheiro ou cheque, recebe 10% de desconto
*&  2 - À vista no cartão de crédito, recebe 15% de desconto
*&  3 - Em duas vezes, preço normal de etiqueta sem juros
*&  4 - Em duas vezes, preço normal de etiqueta mais juros de 10
*&---------------------------------------------------------------------*
REPORT ZEXERCICOALGORITIMOO15.

DATA: P_CNDPGO TYPE STRING.

DATA: PRN  TYPE P DECIMALS 2 VALUE '20.00', " Preço Normal de Etiqueta
      CALC TYPE P DECIMALS 2.           " Cálculo

SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: P_CRTO TYPE BOOLEAN RADIOBUTTON GROUP TPG DEFAULT 'X',   " Cartão de Crédito
              P_DEBITO  TYPE BOOLEAN RADIOBUTTON GROUP TPG,               " Cartão de Débito
              P_2XSJ    TYPE BOOLEAN RADIOBUTTON GROUP TPG,                " 2 vezes sem juros
              P_2XCJ    TYPE BOOLEAN RADIOBUTTON GROUP TPG.                " 2 vezes com juros
SELECTION-SCREEN END OF BLOCK B1.

  " Atribuir o tipo de pagamento à variável P_CNDPGO
  IF P_CRTO = 'X'.
    P_CNDPGO = 'CREDITO'.
  ELSEIF P_DEBITO = 'X'.
    P_CNDPGO = 'DEBITO'.
  ELSEIF P_2XSJ = 'X'.
    P_CNDPGO = '2 vezes sem juros'.
  ELSEIF P_2XCJ = 'X'.
    P_CNDPGO = '2 vezes com juros'.
  ENDIF.

  CASE P_CNDPGO.
    WHEN 'DEBITO'. " À vista em dinheiro ou cheque, recebe 10% de desconto
      CALC = PRN - ( PRN * '0.10' ).
    WHEN 'CREDITO'. " À vista no cartão de crédito, recebe 15% de desconto
      CALC = PRN - ( PRN * '0.15') .
    WHEN '2 vezes sem juros'. " Em duas vezes, preço normal de etiqueta sem juros
      CALC = PRN * 2.
    WHEN '2 vezes com juros'. " Em duas vezes, preço normal de etiqueta mais juros de 10%
      CALC = PRN * 2 + ( PRN * '0.10' ).
    WHEN OTHERS.
      " Tratamento para outras condições de pagamento, se necessário.
  ENDCASE.

  WRITE: / 'Preço Normal de Etiqueta:', PRN,
         / 'Código de Condição de Pagamento:', P_CNDPGO,
         / 'Valor a ser Pago:', CALC.
