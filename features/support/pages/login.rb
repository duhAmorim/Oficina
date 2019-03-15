class Login <SitePrism::Page
    set_url 'https://exec-dev01.sma.local/sigam-pre-prod'
    element :btnLogar,'.Entrar'

    element :usuario,'#username'
    element :senha,'#password'

    element :btnXXX,'#login'
end