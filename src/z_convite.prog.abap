*&---------------------------------------------------------------------*
*& Report z_convite
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*



REPORT z_convite.


DATA ld_nome(100) TYPE c.
DATA ld_sobrenome(100) TYPE c.
DATA ld_nomecomleto(100) TYPE c.
CONSTANTS ld_data(10) type c VALUE '04/12/2023'.
CONSTANTS ld_hora(10) type c VALUE '16:04'.
CONSTANTS ld_endereco(50) type c VALUE 'RUA CALIXTO GARCIA ,101'.

ld_nome = 'Rodrigo'.
ld_sobrenome = 'da Silva Lima'.


CONCATENATE ld_nome ld_sobrenome
    INTO    ld_nomecomleto.

WRITE: 'Olá ', ld_nomecomleto .
SKIP.
WRITE 'Você está convidado para a nossa Festa Inesquecível!'.
NEW-LINE.
SKIP.
WRITE 'Estamos emocionados em convidar você para a nossa festa especial.'.
NEW-LINE.
SKIP.
WRITE 'Detalhes do Evento:'.
NEW-LINE.
SKIP.
WRITE: 'Data:',ld_data.
NEW-LINE.
SKIP.
WRITE: 'Hora:',ld_hora.
NEW-LINE.
SKIP.
WRITE: 'Local: ', ld_endereco.
SKIP.
NEW-LINE.
