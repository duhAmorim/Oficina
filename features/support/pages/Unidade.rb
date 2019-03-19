class Unidade <SitePrism::Page
    element :adiciona,'#ctl00_conteudo_ctl00_cmdAdiciona'
    element :pesquisar,'#ctl00_conteudo_ctl00_cmdPesq'
    element :primeiroFiltro,'#ctl00_conteudo_ctl00_SqlWhere_fields'
    element :segundoFiltro,'#ctl00_conteudo_ctl00_SqlWhere_fields'
    element :terceiroFiltro,'#onetext_1'
    element :btnAdd,'input[onclick="SQLWB_AddButton_Click"]'
end