## Detalhar processo do imigrante conferido com sucesso - PASSO 6 ##
Quando("solicitar a consulta do imigrante conferido") do
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @pesquisar_imigrante = PesquisarImigrantePage.new
    @menu = MenuIntranetPage.new
    @menu.submenu_pesquisar_imigrante
end
  
Quando("detalhar processo do imigrante") do
    @pesquisar_imigrante.pesquisar_requerimento_registro
    @pesquisar_imigrante.detalhar_processo
end
  
Entao("deve-se visualizar detalhamento do processo do imigrante conferido") do
    @pesquisar_imigrante.visualizar_detalhamento_processo
end

## Renovar protocolo do imigrante conferido com sucesso - PASSO 7 ##
Quando("clicar no icone para renovar protocolo") do
    @pesquisar_imigrante = PesquisarImigrantePage.new
    @pesquisar_imigrante.pesquisar_requerimento_registro
    @pesquisar_imigrante.renovar_protocolo_imigrante
end
  
Entao("deve-se visualizar protocolo renovado") do
    @pesquisar_imigrante.visualizar_protocolo_renovado
end

## Reimprimir protocolo do imigrante conferido com sucesso - PASSO 8 ##
Quando("clicar no icone para reimprimir protocolo atual") do
    @pesquisar_imigrante = PesquisarImigrantePage.new
    @pesquisar_imigrante.pesquisar_requerimento_registro
    @pesquisar_imigrante.reimprimir_protocolo
end
  
Entao("deve-se visualizar protocolo atual") do
    @pesquisar_imigrante.visualizar_impressao
end