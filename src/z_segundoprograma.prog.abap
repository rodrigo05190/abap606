*&---------------------------------------------------------------------*
*& Report z_segundoprograma
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_SEGUNDOPROGRAMA.

DATA: DESCRIPTION(50) TYPE C,
      MARCA(50)       TYPE C.

DESCRIPTION = 'CANELA DA CHINA EM PÓ'.
MARCA = 'Strafit'.

WRITE:/ 'Descrição do material',DESCRIPTION.
WRITE:/ 'Marca do programa',MARCA.
