       IDENTIFICATION DIVISION.
       PROGRAM-ID.           HELLO.

       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       01 USER-NAME                               PIC X(40)   VALUE SPACES.
       
       SCREEN SECTION.
       01 CLEAR-SCREEN.
           02 BLANK SCREEN.
       01 CABECALHOS.
           02 LINHA-EM-BRANCO                     PIC X(30)   VALUES ALL SPACES.
           02 LINHA-SEPARACAO                     PIC X(30)   VALUES ALL '*'.
           02 TITULO-SISTEMA                      PIC X(30)   VALUES ALL '    SISTEMA TESTE EM COBOL    '.
       
       PROCEDURE DIVISION.
       HELLO.
           PERFORM CABECALHO.
           DISPLAY (05, 01) 'Digite seu nome: '.
           ACCEPT (05, 18) USER-NAME.
           DISPLAY (07, 01) 'Bem vindo '.
           DISPLAY (07, 11) USER-NAME.
           STOP RUN.
      
       DISPLAY-SCREENS SECTION.
       CABECALHO.
           DISPLAY CLEAR-SCREEN.
           DISPLAY (01, 01) LINHA-SEPARACAO.
           DISPLAY (02, 01) TITULO-SISTEMA.
           DISPLAY (03, 01) LINHA-SEPARACAO.
           DISPLAY (04, 01) LINHA-EM-BRANCO.