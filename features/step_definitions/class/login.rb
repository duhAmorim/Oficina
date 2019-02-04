class Login
    def preencherCampos(usuario,senha)
        find('input[name="username"]').set usuario #O .set indica que vamos inserir dados neste elemento e após coloco o valor a ser inserido por meio da variavel usuario
        fill_in('password', :with => senha) #o fill_in inseri dados nos elemento pelo seu name
        find('#login').click #clicar no botão que tem id login
        nomeUsuario = find('#ctl00_lblnomUsuario').text #pega o nome do usuario logado
        return nomeUsuario
    end

   
end