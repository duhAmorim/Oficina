
Dado("acessado o SIGAM") do
    visit ('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-pre-prod/Default.aspx?idPagina=14886') #acessa a url

end
  
  Dado("estar clicado em logar") do
    find('#ctl00_cmdLogin').click #o find acha o elemento id e o .click indica a ação a ser feita no elemento, neste caso clicar no elemento pelo id
    
  end
  
  Dado("logado com usuario {string} e senha {string}") do |usuario, senha | #recebo os valores pelo bdd usando as variaveis Usuario e senha
    find('input[name="username"]').set usuario #O .set indica que vamos inserir dados neste elemento e após coloco o valor a ser inserido por meio da variavel usuario
    fill_in('password', :with => senha) #o fill_in inseri dados nos elemento pelo seu name
    
  end
  
  Dado("ter clicado em Acessar") do
    find('#login').click #clicar no botão que tem id login
     
end
  
  Quando("Acessar o menu de incendios florestais") do
    find('a[href="/sigam-pre-prod/Default.aspx?idPagina=14909"]').click #clica no elemento pela tela a que tenha o href por isso os []
     
  end
  
  Quando("clicar em Adicionar") do
    find('#ctl00_conteudo_ctl00_cmdAdiciona').click #clica no botão adicionar pelo id dele
  end
  
  Quando("preencher todos os campos") do
   select('EE - Estação Ecológica Valinhos', :from => 'ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$ddlUnidadeConservacao') #O select seleciona uma valor dentro de uma listagem
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtDatDeteccao').click #clica no elemento de data
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtDatDeteccao').set '1500102019' #Insere o valor no elemento de data
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtHrDeteccao').set '12:00' #Insere o valor no elemento de hora
   check('ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkDentroUC') #check serve para ativar um elemento de check box
   
   select('ADAMANTINA', :from => 'ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$ddlMunicipio') #seleciona o municio na listagem de municipios, lembrando que primeiro vem o valor da listagem e apos o nome do elemento de listagem
  
   select('Área Urbana', :from => 'ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$ddlCaractArea')#Seleciona a área na listagem
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtEspecificLocal').set 'valor' #insere uma valor na especificação
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_numLatitude').set '-23' #insere uma coordenada na latitude
   find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_numLongitude').set '-50' #insere uma coordenada na longitude
end
  
  Quando("clicar em atualizar") do
    find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_cmdAtualizaCad').click #clica no botão de atualziar pelo id
    
  end
  
  Então("sistema deve gerar um código de para o BOI") do
    numero =find('#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lblNumBOIncend').text #Pega o numero do boi feito e adiciona na variavel Numero 
    puts (numero) #O comando puts exibi uma mensagem no terminal, neste caso o valor da variavel numero que tem o numero do boi gerado para validar o cenario
  end