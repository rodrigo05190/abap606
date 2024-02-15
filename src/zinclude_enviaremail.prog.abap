*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_ENVIAREMAIL
*&---------------------------------------------------------------------*
FORM ENVIAREMAIL USING USUARIOSISTEMA OPERACAO OPERACAOCONCATENADA USUARIOEMAIL TYPE STRING.
  TRY.
      DATA(LV_URL) = |https://api.mailersend.com/v1/email|.
      DATA: O_CLIENT TYPE REF TO IF_HTTP_CLIENT.
      DATA : LV_JSON_STRING TYPE STRING.
      LV_JSON_STRING =
      `{` &&
        `"from": {` &&
          `"email": "noreplay@id360nm.com.br",` &&
          `"name": "Minha Calculadora"` &&
        `},` &&
        `"to": [` &&
          `{` &&
            `"email": "` && TO_LOWER( USUARIOEMAIL ) && `",` &&
            `"name": "` && USUARIOSISTEMA  && `"` &&
          `}` &&
        `],` &&
         `"subject": "Olá, {$e_usuario}!",` &&
         `"text": "Minha soma realizada.",` &&
         `"html": "<p>Segue sua operação efetuada no detalhe</p><p><b>{$e_operacao}.</b></p>",` &&
         `"variables": [ ` &&
           `{ ` &&
             `"email": "` && TO_LOWER( USUARIOEMAIL ) && `",` &&
             `"substitutions": [ ` &&
               `{ ` &&
                 `"var": "e_usuario", ` &&
                 `"value": "` && USUARIOSISTEMA  && `"` &&
               `}, ` &&
               `{ ` &&
                 `"var": "e_operacao", ` &&
                 `"value": "` && OPERACAOCONCATENADA  && `"` &&
               `} ` &&
             `] ` &&
           `} ` &&
         `] ` &&
      `}`.

      CL_HTTP_CLIENT=>CREATE_BY_URL( EXPORTING
        URL = LV_URL
        IMPORTING
          CLIENT = O_CLIENT
          EXCEPTIONS
            ARGUMENT_NOT_FOUND = 1
            PLUGIN_NOT_ACTIVE = 2
            INTERNAL_ERROR = 3
            OTHERS = 4 ).

      IF SY-SUBRC <> 0.
        O_CLIENT->CLOSE( ).
      ENDIF.

      IF O_CLIENT IS BOUND.
        O_CLIENT->REQUEST->SET_METHOD( IF_HTTP_REQUEST=>CO_REQUEST_METHOD_POST ).
        O_CLIENT->REQUEST->SET_CONTENT_TYPE( 'application/json' ).
        O_CLIENT->REQUEST->SET_HEADER_FIELD( NAME = 'Authorization'
                                             VALUE = 'Bearer mlsn.857129ea2b634c23da3b31c71faec10af47a99e9aafb2e7bb7e33d13f4e49c0c' ).
        " Adicione o seu JSON no SET_CDATA
        O_CLIENT->REQUEST->SET_CDATA( LV_JSON_STRING ).

        O_CLIENT->SEND( TIMEOUT = IF_HTTP_CLIENT=>CO_TIMEOUT_DEFAULT ).
        O_CLIENT->RECEIVE( ).

        DATA: LV_HTTP_STATUS TYPE I,
              LV_STATUS_TEXT TYPE STRING.
        O_CLIENT->RESPONSE->GET_STATUS(
          IMPORTING
            CODE = LV_HTTP_STATUS
            REASON = LV_STATUS_TEXT ).

        WRITE: / 'STATUS:', LV_HTTP_STATUS.
        WRITE: / 'STATUS_TEXT:', LV_STATUS_TEXT.

        IF LV_HTTP_STATUS = 200.
          DATA(LV_RESULT) = O_CLIENT->RESPONSE->GET_CDATA( ).
          WRITE:/ 'RESPONSE'.
          WRITE:/ LV_RESULT.
        ENDIF.

        O_CLIENT->CLOSE( ).
      ENDIF.

    CATCH CX_ROOT INTO DATA(E_TXT).
      WRITE: / E_TXT->GET_TEXT( ).

  ENDTRY.
ENDFORM.
