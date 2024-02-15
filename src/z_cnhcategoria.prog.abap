*&---------------------------------------------------------------------*
*& Report z_cnhcategoria
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_CNHCATEGORIA.

DATA:CAT(50) TYPE C.

SELECTION-SCREEN BEGIN OF BLOCK B1.
  PARAMETERS: P_CAT(1) TYPE C.
SELECTION-SCREEN END OF BLOCK B1.

START-OF-SELECTION.

  CASE P_CAT.
    WHEN 'A'.
      CAT = TEXT-001.
    WHEN 'B'.
      CAT = TEXT-002.
    WHEN 'C'.
      CAT = TEXT-003.
    WHEN 'D'.
      CAT = TEXT-004.
    WHEN 'E'.
      CAT = TEXT-005.
    WHEN OTHERS.
      CAT = TEXT-006.
  ENDCASE.

  WRITE: CAT.
