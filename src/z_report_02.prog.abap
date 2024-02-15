*&---------------------------------------------------------------------*
*& Report z_report_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_REPORT_02.

DATA LD_ID TYPE I.                      "número
DATA LD_NOME(100) TYPE C.               "texto
DATA LD_DTNASC TYPE D.                  "data
DATA LD_HRNASC TYPE T.                  "hora
DATA LD_PESO(6) TYPE P DECIMALS 3.      "número decimal
DATA LD_DESC TYPE STRING.               "texto
DATA LD_LOGIN(5) TYPE N.                "número



* Atribuir valores às variáveis
LD_ID = 123.
LD_NOME = 'John Doe'.
LD_DTNASC = '19900101'.
LD_HRNASC = '143000'.
LD_PESO = '75.500'.
LD_DESC = 'Compra de grande volume de items'.
LD_LOGIN = '12345'.

* Exibir os valores em tela

WRITE (12) 'ID:'.
WRITE (12) LD_ID LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Nome:'.
WRITE (12) LD_NOME.
NEW-LINE.

WRITE (12) 'Nascimento:'.
WRITE (12) LD_DTNASC DD/MM/YY.
WRITE (12) LD_HRNASC.
NEW-LINE.



WRITE (12) 'Peso:'.
WRITE (12) LD_PESO.
NEW-LINE.

WRITE (12) 'Descrição:'.
WRITE LD_DESC.
NEW-LINE.

WRITE (12) 'Login:'.
WRITE (12) LD_LOGIN.
NEW-LINE.
