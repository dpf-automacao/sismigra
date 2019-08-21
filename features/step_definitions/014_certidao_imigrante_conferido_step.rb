## Emitir certidão de registro do imigrante conferido com sucesso - PASSO 9 ##
Quando("solicitar a emissão da certidão do imigrante conferido") do
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @emitir_certidao_emigrante_conferido = EmitirCertidaoEmigrantePage.new
    @emitir_certidao_emigrante_conferido.emitir_certidao_submenu
end
  
Quando("clicar no icone para imprimir certidão de registro") do
    @emitir_certidao_emigrante_conferido.pesquisar_requerimento_registro
    @emitir_certidao_emigrante_conferido.certidao_registro_imigrante_conferido
end

## Visualizar impressão das duas certidões emitidas ##
Entao("deve-se visualizar certidão do imigrante") do
    @emitir_certidao_emigrante_conferido.visualizar_impressao
end

## Emitir certidão de historico de solicitações do imigrante conferido com sucesso - PASSO 9 ##
Quando("clicar no icone para imprimir certidão de historico de solicitações") do
    @emitir_certidao_emigrante_conferido.pesquisar_requerimento_registro
    @emitir_certidao_emigrante_conferido.certidao_historico_imigrante_conferido
end