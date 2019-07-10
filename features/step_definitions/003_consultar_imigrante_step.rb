Quando("solicitar consultar imigrantes") do
  @consultar_imigrante_page =  ConsultarImigrantePage.new
  @consultar_imigrante_page.logar_sismigra
  @consultar_imigrante_page.consultar_imigrante_submenu
end

Quando("informar os dados para pesquisa") do |table|
  @dados = table.rows_hash
  @consultar_imigrante_page.pesquisar_por_filtro(@dados)
end

Entao("deve apresentar registros correspodentes aos dados pesquisados") do
  @consultar_imigrante_page.validar_registro_encontrado
end

# @detalhar_imigrante
# Cenario: Detalhar Imigrante
Quando("consultar o imigrante pelo RNM {string}") do |rnm|
  @consultar_imigrante_page =  ConsultarImigrantePage.new
  @consultar_imigrante_page.logar_sismigra
  @consultar_imigrante_page.consultar_imigrante_submenu
  @consultar_imigrante_page.pesquisar_por_RNM(rnm)
end

Quando("solicitar detalhar") do
  @consultar_imigrante_page.btn_detalhar.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações dos dados pessoais") do
  @consultar_imigrante_page.validar_dados_pessoais

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações dos dados do registro") do
  @consultar_imigrante_page.validar_dados_registro

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações do endereço") do
  @consultar_imigrante_page.validar_dados_endereco

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações do histórico") do
  @consultar_imigrante_page.validar_dados_historico
end

# @reimprimir_protocolo
# Cenario: Reimprimir Protocolo atual
Quando("solicitar reimprimir o protocolo atual") do
  @consultar_imigrante_page.btn_reimprimir_protocolo_atual.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve exibir o protocolo para impressão") do
  @consultar_imigrante_page.visualizar_impressao
end

# @renovar_protocolo
# Cenario: Renovar Protocolo
Quando("solicitar renovar o protocolo atual") do
  @consultar_imigrante_page.btn_renovar_protocolo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Quando("confirmar a quantidade de dias para renovação") do
  @consultar_imigrante_page.confirmar_dias_renovacao(80)
end

Então("o protocolo deve ser renovado") do
  expect(@consultar_imigrante_page).to have_text("Protocolo Renovado Com Sucesso!")
end
