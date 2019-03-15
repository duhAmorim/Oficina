#language: pt
#utf-8

@LogarSigamSitePrism

Funcionalidade: Logar Sigam SitePrism

Eu como usuario
Quero logan no sigam
para acessar a pagina principal

Cenario: Logar com usuário administrador SitePrism

Dado que esteja na tela de login do sigam
Quando inserir usuario e senha  'gtiAdm' 'a' no login do sigam
E clicar em Acessar no sigam 
Entao o sitema deve exibir o nome do usuario 

Cenario: logar com usuario invalido SitePrism

Dado que esteja na tela inicial do sigam 
Quando inserir usuario e senha invalidos 'renan' ' jojo'
E clicar em Acessar no sigam 
Entao o sistema nao irá logar e deve mostrar msg