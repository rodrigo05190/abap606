*&---------------------------------------------------------------------*
*& Report z_emojis
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_EMOJIS.

DATA LINE1 TYPE STRING VALUE ' 👨 '.
DATA LINE2 TYPE STRING VALUE ' /|\ '.
DATA LINE3 TYPE STRING VALUE ' / \ '.
DATA LINE4 TYPE STRING VALUE ' # # '.

WRITE: /2 LINE1 ,
       / LINE2,
       / LINE3,
       / LINE4.
