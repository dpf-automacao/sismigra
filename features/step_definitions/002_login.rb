Dado("que estou na pagina inicial do siseg") do

    

end

Quando("eu informo usuario {string} e senha {string}") do |usuario, senha|

    @usuario = usuario
    @senha = senha
    @login = LoginPage.new
    @login.logar_siseg(@usuario, @senha)

end

Entao("eu realizo um login com sucesso") do

    

end