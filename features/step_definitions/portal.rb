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
  
  Quando("preencher os campos nome {string} - email {string} - estado {string} - cidade {string} - pais {string} - cor raça {string}") do |arg1, arg2, arg3, arg4, arg5, arg6| 
    steps %q{
        Dado que eu tenha acessado o portal
        E acessado o menu contato
        Quando clicar no fale conosco
    }
    fill_in('nome',:with=>arg1)
    fill_in('email',:with=>arg2)
    fill_in('estado',:with=>arg3)
    fill_in('cidade',:with=>arg4)
    fill_in('pais',:with=>arg5)
    fill_in('cor',:with=>arg6)
    fill_in('mensagem',:with=>'preguiça de fazer')
    

  end
  
  Quando("clicar em Enviar") do
    find('.wpcf7-form-control.wpcf7-submit.btn.send-btn.btn-success').click
  end
  
  Então("sistema exibi mensagem") do
    assert_text('Agradecemos a sua mensagem.
      ')
  end