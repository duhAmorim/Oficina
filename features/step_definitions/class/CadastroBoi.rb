class CadastroBoi
    def popularCadastroBoi()
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
        sleep 5
    end
end