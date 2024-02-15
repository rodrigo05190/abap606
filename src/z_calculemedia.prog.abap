*&---------------------------------------------------------------------*
*& Report z_calculemedia
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_CALCULEMEDIA.

SELECTION-SCREEN BEGIN OF BLOCK B1.
  PARAMETERS: P_1bim(12) TYPE P DECIMALS 2,
              P_2bim(12) TYPE P DECIMALS 2,
              P_3bim(12) TYPE P DECIMALS 2,
              P_4bim(12) TYPE P DECIMALS 2.

SELECTION-SCREEN END OF BLOCK B1.


START-OF-SELECTION.
  DATA LD_MEDIA(12) TYPE P DECIMALS 2.

  LD_MEDIA = ( P_1bim +  P_2bim + P_3bim + P_4bim  ) / 4 .

  IF LD_MEDIA > 60.
    WRITE:  'sua media anual foi de ', LD_MEDIA,'voce foi aprovado'.
  ELSE.
    WRITE: 'sua media anual foi de', LD_MEDIA,'voce foi reprovado'.
  ENDIF.
