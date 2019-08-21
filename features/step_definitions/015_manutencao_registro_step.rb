Quando("solicitar a manutenção do registro do imigrante") do
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @manutencao_registro = ManutencaoRegistroPage.new
    @menu = MenuIntranetPage.new
    @menu.submenu_manutencao_registro
end
  
Quando("clicar no icone para detalhar imigrante") do
    @manutencao_registro.pesquisar_requerimento_registro
    @manutencao_registro.detalhar_registro_imigrante
end
  
Quando("inativar registro do imigrante") do
    @manutencao_registro.inativar_registro
end
  
Entao("deve-se visualizar mensagem de sucesso") do
    expect(@manutencao_registro).to have_text('Sucesso!')
end

## IMPRIMIR ##
Quando("clicar no icone imprimir protocolo atual") do
    @manutencao_registro.pesquisar_requerimento_registro
    @manutencao_registro.imprimir_protocolo_atual
end
  
Entao("deve-se visualizar a impressao") do
    @manutencao_registro.visualizar_impressao
end