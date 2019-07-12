Quando("preencho os Dados do {string} do requerimento de {string} e clico em Verificar") do |tipo_solicitacao, tipo_verificacao|

    @requerimento_imigrante_internet.verificar_protocolo_e_andamento_do_requerimento(tipo_solicitacao, tipo_verificacao)

end                                                                                                          
                                                                                                            
Entao("eu visualizo a Verificacao do Protocolo referente") do                                                

    

end                                

Quando("preencho os Dados do {string} do requerimento de {string} e clico em Pesquisar") do |tipo_solicitacao, tipo_verificacao|

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

Quando("preencho o numero do Requerimento para verificar a Situacao do Requerimento") do

    @requerimento_imigrante_intranet.verificar_situacao_requerimento(@tipo_requerimento)

end

Entao("eu visualizo a situacao do Requerimento {string}") do |string|



end

Quando("preencher as informacoes para Pesquisar Solicitacao") do

    @requerimento_imigrante_intranet.pesquisar_solicitacao("Registro", "Em Aberto")

end