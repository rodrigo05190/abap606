*MARA * MATERIAL - MAKTX CHAVE ESTRANGEIRA * DESCRICAO DO MATERIAL
REPORT Z_MARAREPORT01.
*Declara uma variável SELECTMATNR do tipo MATNR para ser usada na instrução SELECT-OPTIONS posteriormente.
DATA SELECTMATNR TYPE MARA-MATNR.

*Fornece uma opção na tela de seleção para o usuário inserir um intervalo de números de material.
SELECT-OPTIONS S_MATNR FOR SELECTMATNR.

*Declara uma estrutura TY_MARA para armazenar dados relacionados a materiais.
TYPES: BEGIN OF TY_MARA,
         MATNR TYPE MARA-MATNR,
         ERNAM TYPE MARA-ERNAM,
         MTART TYPE MARA-MTART,
         SPRAS TYPE MAKT-SPRAS,
         MAKTX TYPE MAKT-MAKTX,
         MAKTG TYPE MAKT-MAKTG,
       END OF TY_MARA.

*Declara uma área de trabalho (WA_MARA) e uma tabela interna (IT_MARA) com base na estrutura definida anteriormente.
DATA:WA_MARA TYPE TY_MARA,
     IT_MARA TYPE TABLE OF TY_MARA.

*Recupera dados das tabelas MARA e MAKT e preenche a tabela interna IT_MARA com base nos números de material especificados.
SELECT DISTINCT MARA~MATNR
       MARA~ERNAM
       MARA~MTART
       MAKT~SPRAS
       MAKT~MAKTX
       MAKT~MAKTG
       INTO TABLE IT_MARA FROM MARA INNER JOIN MAKT ON MARA~MATNR = MAKT~MATNR
       WHERE MARA~MATNR IN S_MATNR.

*Itera sobre a tabela interna IT_MARA e exibe informações sobre cada material, como número de material, nome do criador, tipo de material, código de idioma, texto breve do material e texto breve em letras maiúsculas para matchcodes.
LOOP AT IT_MARA INTO WA_MARA.
  WRITE: / 'Nº do material:', WA_MARA-MATNR,
         / 'Nome do responsável que criou o objeto:', WA_MARA-ERNAM,
         / 'Tipo de material:', WA_MARA-MTART,
         / 'Código de idioma:', WA_MARA-SPRAS,
         / 'Texto breve de material:', WA_MARA-MAKTX,
         / 'Texto breve de material em letras maiúsculas p/matchcodes:', WA_MARA-MAKTG.
  ULINE.
ENDLOOP.
