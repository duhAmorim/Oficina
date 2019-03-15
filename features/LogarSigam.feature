#language: pt
#utf-8

@LogarSigam


Funcionalidade: Logar Sigam

Eu como usuario
Quero logan no sigam
para acessar a pagina principal

Cenario: Logar com usuário administrador

Dado que esteja na tela de login
Quando inserir usuario e senha
Entao o sitema irá logar

Cenario: logar com usuario invalido

Dado que esteja na tela inicial
Quando inserir usuario e senha invalidos
Entao o sistema nao irá logar