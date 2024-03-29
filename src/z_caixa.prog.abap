REPORT Z_CAIXA.

*&---------------------------------------------------------------------*
*& ENTRADA
*&---------------------------------------------------------------------*
*definicoes de variaveis
DATA: DESCRICAO(10) TYPE C,
      QUANTIDADE    TYPE I.

DATA :
    PRECO TYPE P DECIMALS 2,
    IMPOSTO TYPE P DECIMALS 2,
    PRECOFINAL TYPE P DECIMALS 2,
    DESCONTO TYPE P DECIMALS 2,
    DATA_VENCIMENTO TYPE D.

DATA: REFERENCIA(40) TYPE C,
      INFOADICIONAL TYPE STRING.


*definicao de campos de tela
PARAMETERS: P_QTD      TYPE N OBLIGATORY,
            P_DESC(30) TYPE C,
            P_DATA     TYPE SY-DATUM.

PARAMETERS:
  P_CHKBOX TYPE BOOLEAN AS CHECKBOX,
  P_RADIO1 TYPE BOOLEAN RADIOBUTTON GROUP GRP1 DEFAULT 'X',
  P_RADIO2 TYPE BOOLEAN RADIOBUTTON GROUP GRP1,
  P_RADIO3 TYPE BOOLEAN RADIOBUTTON GROUP GRP1.

*&---------------------------------------------------------------------*
*& LOGICA
*&---------------------------------------------------------------------*
CONCATENATE P_QTD P_DESC P_DATA  INTO REFERENCIA SEPARATED BY ','.

DESCRICAO = P_DESC.
QUANTIDADE = P_QTD.

PRECO = '3.99'.
"MULTIPLICAO
IMPOSTO = PRECO * '0.10'.

"SOMA E MULTIPLICACAO (PRIORIZACAO)
PRECOFINAL = ( PRECO + IMPOSTO ) * QUANTIDADE.
DESCONTO = PRECOFINAL * '0.03'.

"SUBTRACAO
PRECOFINAL = PRECOFINAL - DESCONTO.

"OPERACOES COM DATAS
DATA_VENCIMENTO = P_DATA + 30.




*&---------------------------------------------------------------------*
*& SAIDA
*&---------------------------------------------------------------------*



WRITE:
/ 'REFERENCIA DO CLIENTE:',30 REFERENCIA.


WRITE:
/ 'DESCRICAO:',30 DESCRICAO,
/ 'QUANTIDADE:',30 QUANTIDADE,
/ 'DATA:',30 P_DATA MM/DD/YY.

SKIP.

WRITE:
/'MARCA PROPRIA',P_CHKBOX,
/'TAMANHO P',P_RADIO1,
/'TAMANHO M',P_RADIO2,
/'TAMANHO g',P_RADIO3.

SKIP.

WRITE:
/ 'PRECO:',30 PRECO,
/ 'IMPOSTO:',30 IMPOSTO,
/ 'DESCONTO:',30 DESCONTO,
/ 'PRECO_FINAL:',30 PRECOFINAL,
/ 'DATA_VENCIMENTO:',30 DATA_VENCIMENTO MM/DD/YY.
