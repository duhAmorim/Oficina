  Dado("que tenha acessado o sistema xpto") do
    visit ('https://exec-dev01.sma.local/sigam-nascentes/')
  end
  
  Quando("clicar em logar neste sistema") do
    find(:id,'ctl00_conteudo_ctl00_btnEntrar').click
    
  end
  
  Quando("preencher usuario {string} senha {string} so tal") do |nomeUsuario, senhaUsuario|
    find('#username').set nomeUsuario
    fill_in('password',:with=>senhaUsuario)
  end
  
  Quando("clicar em logar no sistema xpto") do
    find('#login').click
  end
  
  Então("sistema deve logar") do
    nome=find('#ctl00_lblnomUsuario').text
    puts(nome)
  end