#language: pt
#utf-8





@portal
Funcionalidade: reutilizar steps

Cenario: verificar tela do formulario

Dado que eu tenha acessado o portal
E acessado o menu contato
Quando clicar no fale conosco
Então sistema deve exibir tela do formulario de contato

Cenario: preencher formulario

Quando preencher os campos nome 'JO' - email 'JO@auto.com' - estado 'São Paulo' - cidade 'São Paulo' - pais 'Brasil' - cor raça 'Mista'
E clicar em Enviar
Então sistema exibi mensagem