Dado("que esteja na tela de login do sigam") do
    visit('http://exec-dev01.sma.local/sigam-sipai-test/')
    @telaLogin = Login.new
    @telaLogin.btnLogar.click

  end
  
  Quando("inserir usuario e senha  {string} {string} no login do sigam") do |nameUsuario, senhaUsuario|
    @telaLogin = Login.new
    @telaLogin.usuario.set nameUsuario
    @telaLogin.senha.set senhaUsuario

  end
  
  Quando("clicar em Acessar no sigam") do
    @telaLogin = Login.new
    @telaLogin.btnXXX.click
    sleep 5
  end
  
  Entao("o sitema deve exibir o nome do usuario") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("que esteja na tela inicial do sigam") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("inserir usuario e senha invalidos {string} {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end

  Entao("o sistema nao irá logar e deve mostrar msg") do
    pending # Write code here that turns the phrase above into concrete actions
  end