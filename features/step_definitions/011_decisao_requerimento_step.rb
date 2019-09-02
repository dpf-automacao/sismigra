Quando("solicitar a decisão do requerimento") do
    @decisao_requerimento = DecisaoRequerimento.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    
    #Acessando menu DECISÃO
    @menu = MenuIntranetPage.new
    @menu.submenu_decisao
end
  

Quando("indeferir o requerimento de {string}") do |tipo_solicitacao|
    @tipo_solicitacao = tipo_solicitacao
    @decisao_requerimento.pesquisar_requerimento(@tipo_solicitacao)
    @decisao_requerimento.indeferir_solicitacao
end
  

Entao("deve-se gerar o termo de indeferimento") do
    @decisao_requerimento.gerar_termo_indeferimento
end
  

Quando("anexar formulário para requerimento de {string}") do |tipo_solicitacao|
    @tipo_solicitacao = tipo_solicitacao
    @decisao_requerimento.pesquisar_requerimento(@tipo_solicitacao)
    @decisao_requerimento.anexar_formulario
end
  

Entao("deve-se deferir o requerimento") do
    @decisao_requerimento.deferir_solicitacao
    @decisao_requerimento.confirmar_deferimento
end