Quando("solicitar o requerimento de {string} de Imigrante") do |tipo_requerimento|

    visit("http://10.2.96.51:8180/sismigra-internet/home.seam")
    @menu_internet = MenuInternetPage.new
    @tipo_requerimento = tipo_requerimento
    @menu_internet.selecionar_menu_internet(@tipo_requerimento)

end

Quando("preencho Dados Pessoais do requerimento e clico em Proximo") do

    @requerimento_imigrante = RequerimentoPage.new

    @requerimento_imigrante.preencher_dados_pessoais(@tipo_requerimento)

end

Quando("preencho Dados do Registro do requerimento e clico em Proximo") do

    @requerimento_imigrante.preencher_dados_registro

end

Quando("preencho Dados do Endereco do requerimento e clico em Proximo") do

    @requerimento_imigrante.preencher_dados_endereco

end

Quando("preencho Dados da Declaracao e clico em Salvar") do

    @requerimento_imigrante.preencher_declaracao(0)

end

Entao("visualizo a Impressao da Solicitacao referente") do



end