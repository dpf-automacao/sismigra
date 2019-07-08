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
  expect(@consultar_imigrante_page).to have_text("MARISOL FERNANDA GALLEGOS LOPEZ")
  expect(@consultar_imigrante_page).to have_text("G148129W")
  expect(@consultar_imigrante_page).to have_text("01/01/2010")
  expect(@consultar_imigrante_page).to have_text("ROSMERY LOPEZ FERNANDEZ")
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
  expect(@consultar_imigrante_page).to have_text(@consultar_imigrante_page.aba_dados_pessoais.text)
  expect(@consultar_imigrante_page).to have_text("F028776Q") # Nº RNM
  expect(@consultar_imigrante_page).to have_text("MAGDALENNYS NAZARETH MOYA GOLDING") # Nome
  expect(@consultar_imigrante_page).to have_text("MARIA MAGDALENA MOYA GOLDING") # Mãe (Filiação 2)
  expect(@consultar_imigrante_page).to have_text("Feminino") # Sexo
  expect(@consultar_imigrante_page).to have_text("01/01/2000") # Data nascimento
  expect(@consultar_imigrante_page).to have_text("MAGDALENNY55@GMAIL.COM") # Email
  expect(@consultar_imigrante_page).to have_text("930 - ESTUDANTE") # Ocupação principal
  expect(@consultar_imigrante_page).to have_text("COMANÁ") # Cidade de Nascimento

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações dos dados do registro") do
  expect(@consultar_imigrante_page).to have_text(@consultar_imigrante_page.aba_dados_registro.text)
  expect(@consultar_imigrante_page).to have_text("F028776Q")
  expect(@consultar_imigrante_page).to have_text("MAGDALENNYS NAZARETH MOYA GOLDING")
  expect(@consultar_imigrante_page).to have_text("Ativo") # Situação do registro
  expect(@consultar_imigrante_page).to have_text("21/11/2018") # Data do registro
  expect(@consultar_imigrante_page).to have_text("273 - PORTARIA INTERMINISTERIAL N 9/2018") # Amparo Legal
  expect(@consultar_imigrante_page).to have_text("028776190481968502") # Nº da CIE
  expect(@consultar_imigrante_page).to have_text("PACARAIMA") # Local de entrada
  expect(@consultar_imigrante_page).to have_text("01/10/2018") # Data de entrada

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações do endereço") do
  expect(@consultar_imigrante_page).to have_text(@consultar_imigrante_page.aba_endereco.text)
  expect(@consultar_imigrante_page).to have_text("F028776Q")
  expect(@consultar_imigrante_page).to have_text("MAGDALENNYS NAZARETH MOYA GOLDING")
  expect(@consultar_imigrante_page).to have_text("DELEMIG/DREX/SR/PF/RR") # Unidade vinculada
  expect(@consultar_imigrante_page).to have_text("69305-370") # CEP
  expect(@consultar_imigrante_page).to have_text("Boa Vista") # Cidade
  expect(@consultar_imigrante_page).to have_text("RR") # Sigla Estado
  expect(@consultar_imigrante_page).to have_text("RUA FÁBIO MAGALHÃES") # Logradouro
  expect(@consultar_imigrante_page).to have_text("TRINTA E UM DE MARÇO") # Bairro

  @consultar_imigrante_page.btn_proximo.click
  @consultar_imigrante_page.aguardar_carregamento
end

Então("deve visualizar as informações do histórico") do
  expect(@consultar_imigrante_page).to have_text(@consultar_imigrante_page.aba_historico.text)
  expect(@consultar_imigrante_page).to have_text("F028776Q")
  expect(@consultar_imigrante_page).to have_text("MAGDALENNYS NAZARETH MOYA GOLDING")
  expect(@consultar_imigrante_page).to have_text("Solicitações")
  expect(@consultar_imigrante_page).to have_text("Histórico de manutenções de registro")
end
