class SigamHome <SitePrism::Page

    element :menuPortal,:link,'Portal'
    element :subMenuTabelasOrganizacionais,:link,'Tabelas Organizacionais',match: :first
    elements :subMenuUnidade,:link,'Unidade',match: :first
    element :home,:link,'Home',match: :first
    element :logoInicial,'#ctl00_lnkLogo'

end