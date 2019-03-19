class Login <SitePrism::Page
    set_url 'https://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test'
    element :btnLogar,'.Entrar'

    element :usuario,'#username'
    element :senha,'#password'

    element :btnXXX,'#login'
end