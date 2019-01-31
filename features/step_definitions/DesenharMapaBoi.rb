Quando("clicar aba mapa") do
    find('#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia').click #clica na aba do mapa da ocorrencia
  end
  
  Quando("clicar em desenhar") do
    find('#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi_ctl02_btnGeo').click #clica na opção de desenhar mapa no grid que é unicá na tela
  end
  
  Quando("fazer o poligono") do
    page.driver.browser.switch_to.default_content #muda o foco para outro frame da pagina
    map = find(:id, "ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_CarGMap").native #mapeia o frame do mapa de desenho
    
    find('div[title="Desenhar forma"]').click #clicar no botão de desenhar do mapa

    page.driver.browser.action.move_to(map,465, 354).click.perform #movimenta o mouse para as coordenadas 465, 354 e clica
    sleep 2
    page.driver.browser.action.move_to(map,265, 354).click.perform
    sleep 2
    page.driver.browser.action.move_to(map,565, 54).click.perform
    sleep 2
    page.driver.browser.action.move_to(map,465, 354).click.perform
    sleep 2

  end
  
  Quando("preencher os atributos") do
    within_frame(find('iframe[src="/sigam-pre-prod/SIPAI/Mapa/Info/OcorrenciaTipoInfo.aspx?idPagina=14909"]')) do #muda o foco para o frame dentro do mapa de atributos
        find('#descObservacao').set 'automação mapa' #interagi com o campo de textos do frame de atributo
        find('#cmdAtualizaBO').click #clica no botão de salvar atributos
        end #finaliza a mudança de foco do frame
     sleep 2
  end
  
  Então("poligono é desenhado") do
    find('#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_btnRetornaMapa').click #clica em sair do mapa
    sleep 5
  end