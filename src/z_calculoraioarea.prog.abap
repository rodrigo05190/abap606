*&---------------------------------------------------------------------*
*& Report z_calculoraioarea
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_CALCULORAIOAREA.


CONSTANTS LC_PI(12) TYPE P DECIMALS 13 VALUE '3.14159265'.

DATA LD_RADIO(12) TYPE P DECIMALS 2.
DATA LD_AREA(12) TYPE P DECIMALS 2.

LD_RADIO = 15.
LD_AREA = ( LD_RADIO * LD_RADIO ) * LC_PI.
WRITE: 'A área de um circúlo com de ', LD_RADIO, 'é' , LD_AREA.
