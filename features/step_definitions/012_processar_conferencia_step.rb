## PROCESSAR CONFERÊNCIA - DEVOLVER PARA UNIDADE LOCAL - PASSO 3 ##
Quando("solicitar processamento de conferencia") do
    @processar_conferencia = ProcessarConferencia.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    
    #Acessando menu DECISÃO
    @menu = MenuIntranetPage.new
    @menu.submenu_processar_conferencia
  end
  
  Quando("registrar conferencia") do
    @processar_conferencia.pesquisar_requerimento_registro
  end
  
  Entao("deve-se devolver conferencia para unidade local") do
    @processar_conferencia.devolver_para_unidade_local
  end

  ## TRATAR PENDENCIA DEVOLVIDA - PASSO 4 ##
Quando("solicitar tratamento de pendencias devolvidas") do
    @processar_conferencia = ProcessarConferencia.new
    @logar_siseg = LoginPage.new
    @logar_siseg.logar_siseg("dante.dlpf", "ctidpf")
    @menu = MenuIntranetPage.new
    @menu.submenu_processos_devolvidos
end
  
Quando("tratar o processo devolvido") do
    @processar_conferencia.pesquisar_requerimento_registro
end
  
Entao("deve-se deferir a pendencia devolvida") do
    @processar_conferencia.deferir_processo_devolvido
    expect(@processar_conferencia).to have_text('Requerimento Deferido com Sucesso')
end

## PROCESSAR CONFERENCIA COM SUCESSO - PASSO 5 ##
Entao("deve-se processar conferencia com sucesso") do
    @processar_conferencia.dados_conferidos_sucesso
    expect(@processar_conferencia).to have_text('Conferência Concluída')
end
  
  