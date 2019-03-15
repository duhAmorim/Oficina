#language: pt
#utf-8


@unidade

Funcionalidade: Cadastro de uma nova unidade


Cenario:Verificar o cadastro da Unidade

Dado que tenha acessado o Sigam
E clicar em Login
E preencher login 'gtiAdm' senha 'a'
E clicar em Acessar
E clicar em Portal
E clicar em Tabelas Organizacionais
E clicar em Unidades
E clicar em novo
Quando Preencher os dados obrigatorios sigla 'NataliaUnidade' - Nome da Unidade 'nati Unidade' - Órgão 'Testes GlobalWeb' - Municipio 'AGUAÍ' - Responsável 'A&B COMÉRCIO E ADMISTRAÇÃO DE MATERIAIS LTDA - ME' - Unidade Superior 'FE - Floresta Estadual Edmundo Navarro de Andrade' 
E clicar em Finalizar
E selecionar a opção 'Sigla da Unidade' - Sigla da unidade 'NataliaUnidade'
E clicar em Adiciona
E clicar em pesquisar
Então o sistema apresenta o cadastro no grid 'nati Unidade'