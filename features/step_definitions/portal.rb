Dado("que eu tenha acessado o portal") do
    visit ('https://portal-sma-test.azurewebsites.net/')
  end
  
  Dado("acessado o menu contato") do
    find('#menu-item-83130').hover
  end
  
  Quando("clicar no fale conosco") do
    
    first('a[href="https://portal-sma-test.azurewebsites.net/fale-conosco/"]').click
  end
  
  Então("sistema deve exibir tela do formulario de contato") do
    assert_text('Nome')
  end
  
  Quando("preencher os campos nome {string} - email {string} - estado {string} - cidade {string} - pais {string} - cor raça {string}") do |string, string2, string3, string4, string5, string6| 
    steps %q{
        Dado que eu tenha acessado o portal
        E acessado o menu contato
        Quando clicar no fale conosco
    }
    sleep 3
  end
  
  Quando("clicar em Enviar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema exibi mensagem") do
    pending # Write code here that turns the phrase above into concrete actions
  end