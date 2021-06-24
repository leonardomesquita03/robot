
**Settings***
Library     app.py

***Test Cases***
Deve retornar mensagem de Boas vindas
    ${result}=              welcome       Leonardo
    Should Be Equal         ${result}  Ola Leonardo, seja bem vindo ao curso de robot!
    