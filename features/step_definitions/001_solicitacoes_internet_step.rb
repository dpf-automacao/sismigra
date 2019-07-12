Quando("realizar a solicitacao de {string} de Imigrante na Internet") do |tipo_requerimento|

    @menu_internet = MenuInternetPage.new
    @requerimento_imigrante_internet = SolicitacoesInternetPage.new
    @tipo_requerimento = tipo_requerimento
    @menu_internet.selecionar_menu_internet(@tipo_requerimento)

end

Quando("preencho Dados Pessoais do requerimento e clico em Proximo") do

    @requerimento_imigrante_internet.preencher_dados_pessoais(@tipo_requerimento)

end

Quando("preencho Dados do Registro do requerimento e clico em Proximo") do

    @requerimento_imigrante_internet.preencher_dados_registro

end

Quando("preencho Dados do Endereco do requerimento e clico em Proximo") do

    @requerimento_imigrante_internet.preencher_dados_endereco

end

Quando("preencho Dados da Declaracao e clico em Salvar") do

    @requerimento_imigrante_internet.preencher_declaracao(0)

end

Entao("visualizo a Impressao da Solicitacao referente") do



end