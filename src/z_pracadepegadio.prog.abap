*&---------------------------------------------------------------------*
*& Report zpracadepegadio
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_PRACADEPEGADIO.

*DATA: CONCESSIONARIA(50)      TYPE C VALUE 'AUTOPISTA',
*      CONCESSIONARIA_CNPJ(14) TYPE C VALUE 'AUTOPISTA',
*      RECIBO                  TYPE STRING VALUE '1234567890',
*      OPERADOR                TYPE I VALUE 123,
*      VIA                     TYPE STRING VALUE 'ViaExpressa',
*      VALORPAGO               TYPE STRING VALUE '50.00',
*      TP_PAGAMENTO            TYPE STRING,
*      PAGAMENTO               TYPE STRING VALUE 'Aprovado',
*      PLACA                   TYPE STRING VALUE 'ABC1234',
*      VALOR_PAGO              TYPE P LENGTH 8 DECIMALS 2 VALUE '50.00',
*      DATA                    TYPE D,
*      HORA                    TYPE T,
*      VALOR_APROXIMADO        TYPE STRING VALUE '50.00',
*      FONTE                   TYPE STRING VALUE 'IBPT',
*      DATA_FORMATADA          TYPE STRING,
*      HORA_FORMATADA          TYPE STRING.

PARAMETERS: P_CONCNR(50) TYPE C,                    " Concessionária
            P_CNPJ(20)   TYPE C,                      " CNPJ da Concessionária
            P_REC        TYPE STRING,                       " Recibo
            P_OPER       TYPE I,                           " Operador
           " P_VIA        TYPE STRING,                       " Via
            P_TPPGTO     TYPE STRING,                   " Tipo de Pagamento
            "P_PGTO       TYPE STRING,                      " Pagamento
            P_PLACA      TYPE STRING,                     " Placa
            P_VPAGO      TYPE p DECIMALS 2,   " Valor Pago (número)
            P_DATA       TYPE SY-DATUM,                           " Data
            P_HORA       TYPE SY-UZEIT,                           " Hora
           " P_VAPRX      TYPE STRING,                  " Valor Aproximado
            P_FONTE      TYPE STRING.                     " Fonte

DATA: lt_tipos_pagamento TYPE TABLE OF string.
APPEND 'Cartão' TO lt_tipos_pagamento.
APPEND 'Dinheiro' TO lt_tipos_pagamento.
APPEND 'Cheque' TO lt_tipos_pagamento.

*GET TIME.
*DATA = SY-DATUM.
*DATA_FORMATADA = |{ DATA+6(2) }/{ DATA+4(2) }/{ DATA(4) }|..
*HORA = SY-UZEIT.
*HORA_FORMATADA = |{ HORA+0(2) }:{ HORA+2(2) }|.


WRITE: / 'CONCESSIONÁRIA:', P_CONCNR,
   / 'RECIBO:', P_REC,
   / 'OPERADOR:', P_OPER,
   "/ 'VIA:', P_VIA,
   / 'TIPO DE PAGAMENTO:', P_TPPGTO,
    " / 'PAGAMENTO:', P_PGTO,
   / 'PLACA:', P_PLACA,
   / 'VALOR PAGO:', P_VPAGO CURRENCY 'BRL',
   / 'DATA:', P_DATA,
   / 'HORA:', P_HORA,
  " / 'VALOR APROXIMADO:', P_VAPRX,
   / 'FONTE:', P_FONTE.
WRITE: 'PRINT'.
