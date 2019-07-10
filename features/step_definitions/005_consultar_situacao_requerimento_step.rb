Quando("consultar um requerimento {string} na situação {string}") do |nr_requerimento, situacao|
  @consultar_situacao_requerimento_page =  ConsultarSituacaoRequerimentoPage.new
  @consultar_situacao_requerimento_page.logar_sismigra
  @consultar_situacao_requerimento_page.situacao_requerimento_submenu

  @consultar_situacao_requerimento_page.pesquisar_por_RNM(nr_requerimento)
end

Então("deve exibir o registro correspondente") do
  @consultar_situacao_requerimento_page.validar_registro_encontrado
end

Então("exibir a legenda para a situação") do
  @consultar_situacao_requerimento_page.validar_legenda
end
