# SOLICITACOES INTERNET

Quando("realizar o procedimento de {string} de Imigrante na Internet") do |tipo_requerimento|

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

# FIM INTERNET

Quando("preencho os Dados de {string} do requerimento para {string} e clico em Verificar") do |tipo_solicitacao, tipo_verificacao|

    @requerimento_imigrante_internet.verificar_protocolo_e_andamento_do_requerimento(tipo_solicitacao, tipo_verificacao)

end

Entao("eu visualizo a Verificacao do Protocolo referente") do



end

Quando("preencho os Dados de {string} do requerimento para {string} e clico em Pesquisar") do |tipo_solicitacao, tipo_verificacao|

    @requerimento_imigrante_internet.verificar_protocolo_e_andamento_do_requerimento(tipo_solicitacao, tipo_verificacao)

end

Entao("eu visualizo o andamento do requerimento {string}") do |situacao_requerimento|



end

Quando("solicitar Situacao do Requerimento de {string} no menu {string} na Intranet") do |tipo_requerimento, tipo_menu|

    @menu_intranet = MenuIntranetPage.new
    @requerimento_imigrante_intranet = SolicitacoesIntranetPage.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @tipo_requerimento = tipo_requerimento
    @menu_intranet.selecionar_menu_solicitacoes_intranet(tipo_menu)

end

Quando("processar atendimento de {string} no menu {string} na Intranet") do |tipo_requerimento, tipo_menu|

    @menu_intranet = MenuIntranetPage.new
    @requerimento_imigrante_intranet = SolicitacoesIntranetPage.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @tipo_requerimento = tipo_requerimento
    @menu_intranet.selecionar_menu_solicitacoes_intranet(tipo_menu)

end

Quando("preencho o numero do Requerimento para verificar a Situacao do Requerimento") do

    @requerimento_imigrante_intranet.verificar_situacao_requerimento(@tipo_requerimento)

end

Entao("eu visualizo a situacao do Requerimento {string}") do |situacao_requerimento|



end

Quando("preencher as informacoes para Pesquisar Solicitacao de {string} na Situacao {string}") do |tipo_solicitacao_pesquisa, situacao_requerimento_pesquisa|

    @tipo_solicitacao_pesquisa = tipo_solicitacao_pesquisa
    @situacao_requerimento_pesquisa = situacao_requerimento_pesquisa

    @requerimento_imigrante_intranet.pesquisar_solicitacao(@tipo_solicitacao_pesquisa, @situacao_requerimento_pesquisa)

end

Quando("clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente") do

    @requerimento_imigrante_intranet.abortar_solicitacao_para_analise

end

# PROCESSAR ATENDIMENTO

Quando("preencho Dados Pessoais e clico em Proximo") do

    @requerimento_imigrante_intranet.preencher_dados_pessoais

end

Quando("preencho Dados do Registro e clico em Proximo") do

    @requerimento_imigrante_intranet.preencher_dados_do_registro

end

Quando("preencho Dados do Endereco e clico em Proximo") do

    @requerimento_imigrante_intranet.preencher_endereco

end

Quando("preencho Dados de Documentos e clico em Proximo") do

    @requerimento_imigrante_intranet.preencher_documentos

end

Quando("preencho Dados do Resultado da Pesquisa e clico em Proximo") do

    @requerimento_imigrante_intranet.preencher_resultado_da_pesquisa

end

Quando("visualizo Dados da Previa da Carteira e clico em {string}") do |tipo_finalizacao|

    @tipo_finalizacao = tipo_finalizacao
    @requerimento_imigrante_intranet.visualizar_previa_carteira(@tipo_finalizacao)

end

Entao("verifico o requerimento referente {string}") do |situacao_requerimento|

    @situacao_requerimento = situacao_requerimento

end

# DEFERIR ATENDIMENTO

Quando("solicitar Deferir o requerimento de {string} no menu {string}") do |tipo_requerimento, tipo_menu|

    @menu_intranet = MenuIntranetPage.new
    @requerimento_imigrante_intranet = SolicitacoesIntranetPage.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @tipo_requerimento = tipo_requerimento
    @menu_intranet.selecionar_menu_solicitacoes_intranet(tipo_menu)

end

Quando("adiciono formulários ao requerimento") do

    @requerimento_imigrante_intranet.anexar_formularios_decisao

end

Quando("solicito deferir o requerimento") do

end

Quando("confirmo o deferimento do processo") do

end

Quando("preencho Dados do Endereco e clico Deferir e Encerro o deferimento") do

    @requerimento_imigrante_intranet.deferir_alteracao_endereco

end

Entao("eu realizo o deferimento de alteracao de endereco com sucesso") do



end
