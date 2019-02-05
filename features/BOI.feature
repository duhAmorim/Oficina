#language: pt
#utf-8

#UserStory- 43100-UserStory-Criar aba Embarcações Abordadas de Especificação

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO agente de fiscalização ambiental QUERO informar as Embarcações Abordadas na Área Protegida
#PARA detalhar melhor o Relatório de Vistoria Ambiental.


@boi
Funcionalidade: Verificar criação do Boletim de Ocorrencia

Cenario: Preencher fomulario do boi

Dado acessado o SIGAM
E estar clicado em logar
E logado com usuario 'gtiAdm' e senha 'a'
Quando Acessar o menu de incendios florestais
E clicar em Adicionar
E preencher todos os campos
E clicar em atualizar
Então sistema deve gerar um código de para o BOI