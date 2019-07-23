# Emitir Certidão de registro
# Emitir Certidão de historico de solicitações
Quando("selecionar o imigrante de RNM {string}") do |rnm|
    @emitir_certidao_page =  EmitirCertidaoPage.new
    @logar_siseg = LoginPage.new
    
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @emitir_certidao_page.emitir_certidao_submenu
    @emitir_certidao_page.pesquisar_por_RNM(rnm)
end

Quando("solicitar a {string}")do |certidao|
  @emitir_certidao_page.emitir_certidao(certidao)
end

Entao("deve ser emitido a certidao") do
  @emitir_certidao_page.visualizar_impressao
end