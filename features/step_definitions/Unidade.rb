Dado("que tenha acessado o Sigam") do
    @ll = Login.new
    @ll.load
  end
  
  Dado("clicar em Login") do
    @ll = Login.new
    @ll.btnLogar.click
  end
  
  Dado("preencher login {string} senha {string}") do |string, string2|
    @ll = Login.new
    @ll.usuario.set string
    @ll.senha.set string2
    
  end
  
  Dado("clicar em Acessar") do
    @ll = Login.new
    @ll.btnXXX.click
  end
  
  Dado("clicar em Portal") do
    @SH = SigamHome.new
    @SH.menuPortal.hover
    sleep 2
  end
  
  Dado("clicar em Tabelas Organizacionais") do
    @SH = SigamHome.new
    @SH.subMenuTabelasOrganizacionais.hover
    sleep 2
  end
  
  Dado("clicar em Unidades") do
    @SH = SigamHome.new
    @SH.subMenuUnidade[1].click
    sleep 2
  end
  
  Dado("clicar em novo") do
   @uni = Unidade.new
   @uni.adiciona.click
   sleep 2
  end
  
  Quando("Preencher os dados obrigatorios sigla {string} - Nome da Unidade {string} - Órgão {string} - Municipio {string} - Responsável {string} - Unidade Superior {string}") do |string, string2, string3, string4, string5, string6|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em Finalizar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("selecionar a opção {string} - Sigla da unidade {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em Adiciona") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em pesquisar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("o sistema apresenta o cadastro no grid {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end