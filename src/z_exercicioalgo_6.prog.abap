*&---------------------------------------------------------------------*
*& Report z_exercicioalgo_6
*&---------------------------------------------------------------------*
*&Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo vendida
*&respectivamente por 10, 12 e 15 reais. Construa um algoritmo em que o usuário forneça a quantidade de
*&camisetas pequenas, médias e grandes referentes a uma venda, e a máquina informe quanto será o valor
*&arrecadado.
*&---------------------------------------------------------------------*
REPORT Z_EXERCICIOALGO_6.


PARAMETERS: P_TP TYPE I, "pequeno
            P_TM TYPE I, "médio
            P_TG TYPE I. "grande

DATA: TOTAL TYPE I.

TOTAL = P_TP + P_TM + P_TG.
WRITE:
/ 'Quantidade - Tamanho Pequeno:', P_TP,
/ 'Quantidade - Tamanho Médio:', P_TM,
/ 'Quantidade - Tamanho Grande:', P_TG,
/ 'Total de Quantidades:', TOTAL.
