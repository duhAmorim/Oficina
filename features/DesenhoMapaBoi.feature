#language: pt
#utf-8

#UserStory- 43100-UserStory-Criar aba Embarcações Abordadas de Especificação

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO agente de fiscalização ambiental QUERO informar as Embarcações Abordadas na Área Protegida
#PARA detalhar melhor o Relatório de Vistoria Ambiental.


@boiMapa
Funcionalidade: Verificar criação do mapa

Cenario: Preencher fomulario do boi mapa

Dado acessado o SIGAM
E estar clicado em logar
E logado com usuario 'gtiAdm' e senha 'a'
E ter clicado em Acessar
Quando Acessar o menu de incendios florestais
E clicar em Adicionar
E preencher todos os campos
E clicar em atualizar
#todo bdd para cima já esta codificado em outros momentos, logo a automação procura por eles, acha em outros arquivos e executa
E clicar aba mapa
E clicar em desenhar
E fazer o poligono
E preencher os atributos
Então poligono é desenhado