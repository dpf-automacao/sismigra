Quando("realizar o procedimento de consultar relatorio {string}") do |tipo_submenu_relatorio|  

    @login = LoginPage.new
    @login.logar_siseg("dante.dlpf", "ctidpf")

    @menu_relatorio = MenuIntranetPage.new
    @menu_relatorio.selecionar_submenu_relatorios(tipo_submenu_relatorio)
    sleep(3)
    @relatorios_page = RelatoriosPage.new

end  

Quando("preencho Dados de Contulta do relatorio e clico em Gerar") do
      
    @relatorios_page.preencher_relatorio_auditoria
      
end

Entao("visualizo a Impressao do relatorio referente") do        

end
    
                                                                            
Quando("preencho Dados de Contulta do requerimento e clico em Gerar") do       
    
    @relatorios_page.preencher_relatorio_historico
    
end                                                                            
                                                                            

Quando("preencho Dados de Contulta do relatorio de quantitativo e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_quantitativo_erro_rnm

end

Quando("preencho Dados de Contulta do relatorio de quantitativo de cedulas e clico em Gerar") do
    
  @relatorios_page.preencher_relatorio_quantitativo_cedulas

end

Quando("preencho Dados de Contulta do relatorio de quantitativo de imigrantes e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_quantitativo_imigrantes_registrados
    
end

Quando("preencho Dados de Contulta do relatorio de Solicitações indeferidas da decisão e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_solicitacoes_indeferida_decisao

end


Quando("preencho Dados de Contulta do relatorio de Quantitativo de Solicitações cadastradas e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_quantitativo_solicitacoes_cadastradas  

end

Quando("preencho Dados de Contulta do relatorio de Quantitativo de Erro Material e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_quantitativo_erro_material
 
end


Quando("preencho Dados de Contulta do relatorio de Cédulas não recebidas e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_cedulas_nao_recebidas

end


Quando("preencho Dados de Contulta do relatorio de Requerimentos Suspensos e clico em Gerar") do
    
    @relatorios_page.preencher_relatorio_requerimentos_suspensos

end
  
  
  