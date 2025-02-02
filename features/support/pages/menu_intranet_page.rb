class MenuIntranetPage < SitePrism::Page

=begin

Autor: Vinicius Fernando Costa Coutinho
Data: 31/08/2019
Versão: 1.0
Contato: vfcoutinho@stefanini.com

=end

  # MAPEAMENTO DE ELEMENTOS PARA PROCESSAR ATENDIMENTO

  element :solicitacoes_menu, :xpath, "//div[text()='Solicitações']"
  element :processar_atendimento_submenu, :xpath, "//span[text()='Processar Atendimento']"
  element :decisao_submenu, :xpath, '//span[text()="Decisão"]'
  element :imigrante_menu, :xpath, '//div[text()="Imigrante"]'
  element :consultar_imigrante_submenu, :xpath, '//span[text()="Consultar Imigrante"]'
  element :manutencao_registro_submenu, :xpath,'//span[text()="Manutenção de Registro"]'
  element :emitir_certidao_submenu, :xpath, '//span[text()="Emitir Certidão"]'
  element :situacao_requerimento_submenu, :xpath, '//span[text()="Situação de Requerimento"]'
  element :tratar_pendencias_submenu, :xpath, '//span[text()="Tratar Pendências"]'
  element :alteracao_endereco_submenu, :xpath, '//span[text()="Alteração de Endereço"]'
  element :processar_conferencia_submenu, :xpath, '//span[text()="Processar Conferência"]'
  element :processos_devolvidos, :xpath, '//span[text()="Processos Devolvidos"]'


  # MAPEAMENTO DE ELEMENTOS DE MENU RELATORIOS E SUBMENUS
  element :relatorios_imigrante_menu, :xpath, '//form//div//div[text()="Relatórios"]'
  element :relatorio_auditoria_submenu, :xpath, '//span[text()="Auditoria"]'
  element :historico_imigrante_submenu, :xpath, '//span[text()="Histórico de imigrante"]'
  element :quantitativo_erro_rnm_submenu, :xpath, '//span[text()="Quantitativo de Erro no Número do RNM"]'
  element :quantitativo_cedulas_submenu, :xpath, '//span[text()="Quantitativo de Cédulas"]'
  element :quantitativo_imigrantes_registrados_submenu, :xpath, '//span[text()="Quantitativo de imigrantes registrados"]'
  element :solicitacoes_indeferidas_decisao_submenu, :xpath, '//span[text()="Solicitações Indeferidas na Decisão"]'
  element :quantitativo_solicitacoes_cadastradas_submenu, :xpath, '//span[text()="Quantitativo de Solicitação Cadastradas"]'
  element :quantitativo_erro_material_submenu, :xpath, '//span[text()="Quantitativo de Erro Material"]'
  element :quantitativo_cedulas_nao_recebidas_submenu, :xpath, '//span[text()="Cédulas não recebidas"]'
  element :requerimentos_suspensos_submenu, :xpath, '//span[text()="Requerimentos Suspensos"]'
  

  # DEFININDO METODO PARA SELECIONAR SUB MENU DO MENU PROCESSAR ATENDIMENTO

  def selecionar_menu_solicitacoes_intranet(tipo_menu)
    wait_until_solicitacoes_menu_visible
    if(tipo_menu == "Situacao_do_Requerimento")
      solicitacoes_menu.hover
      sub_menu_situacao_requerimento
    elsif(tipo_menu == "Processar_Atendimento")
      solicitacoes_menu.hover
      sub_menu_processar_atendimento
    elsif(tipo_menu == "Decisao")
      solicitacoes_menu.hover
      submenu_decisao
    elsif(tipo_menu == "Alteracao_Endereco")
      solicitacoes_menu.hover
      submenu_alteracao_endereco
    end
  end


  # INICIO DEFINIR SUBMENUS DO PROCESSAR ATENDIMENTO

  def sub_menu_situacao_requerimento
    situacao_requerimento_submenu.hover
    situacao_requerimento_submenu.click
  end

  def sub_menu_processar_atendimento
    processar_atendimento_submenu.hover
    processar_atendimento_submenu.click
  end

  def submenu_decisao
    decisao_submenu.hover
    decisao_submenu.click
  end

  def submenu_tratar_pendencias
    tratar_pendencias_submenu.hover
  end

  def submenu_alteracao_endereco
    submenu_tratar_pendencias
    alteracao_endereco_submenu.hover
    alteracao_endereco_submenu.click
  end

  # --------------- FIM DEFINIR SUBMENUS DO PROCESSAR ATENDIMENTO

  # INICIO DEFINIR SUBMENUS DO HISTORICO DO IMIGRANTE

  def submenu_relatorio_auditoria
    relatorio_auditoria_submenu.click
  end

  def submenu_historico_imigrante
    historico_imigrante_submenu.click
  end

  # INICIO DEFINIR SUBMENUS QUANTITATIVO DE ERRO MATERIAL NÚMERO RNM

  def submenu_quantitativo_erro_rnm
    quantitativo_erro_rnm_submenu.click
  end

  def submenu_quantitativo_cedulas
    quantitativo_cedulas_submenu.click
  end

  def submenu_quantitativo_imigrantes_registrados
    quantitativo_imigrantes_registrados_submenu.click
  end

  def submenu_solicitacoes_indeferidas_decisao
    solicitacoes_indeferidas_decisao_submenu.click
  end

  def submenu_quantitativo_solicitacao_cadastradas
    quantitativo_solicitacoes_cadastradas_submenu.click
  end

  def submenu_quantitativo_erro_material
    quantitativo_erro_material_submenu.click
  end

  def submenu_quantitativo_cedulas_nao_reebidas
    quantitativo_cedulas_nao_recebidas_submenu.click
  end

  def submenu_requerimentos_suspensos
    equerimentos_suspensos_submenu.click
  end

  # --------------- FIM DEFINIR SUBMENUS DO HISTORICO DO IMIGRANTE

 
  # DEFININDO METODO PARA SELECIONAR SUB MENU DO HISTORICO DO IMIGRANTE

  def selecionar_submenu_relatorios(tipo_submenu_relatorio)
    sleep(0.5)
    relatorios_imigrante_menu.hover
    sleep(0.5)
    if(tipo_submenu_relatorio == "Historico de imigrante")
      submenu_historico_imigrante
    elsif (tipo_submenu_relatorio == "Auditoria")
      submenu_relatorio_auditoria
    elsif (tipo_submenu_relatorio == "Quantitativo de Erro no Número do RNM")
      submenu_quantitativo_erro_rnm
    elsif (tipo_submenu_relatorio == "Quantitativo de Cédulas")
      submenu_quantitativo_cedulas
    elsif (tipo_submenu_relatorio == "Quantitativo de imigrantes registrados")
      submenu_quantitativo_imigrantes_registrados
    elsif (tipo_submenu_relatorio == "Solicitações Indeferidas na Decisão")
      submenu_solicitacoes_indeferidas_decisao
    elsif (tipo_submenu_relatorio == "Quantitativo de Solicitação Cadastradas")
      submenu_quantitativo_solicitacao_cadastradas
    elsif (tipo_submenu_relatorio == "Quantitativo de Erro Material")
      submenu_quantitativo_erro_material
    elsif (tipo_submenu_relatorio == "Cédulas não recebidas")
      submenu_quantitativo_cedulas_nao_reebidas
    else (tipo_submenu_relatorio == "requerimentos_suspensos_submenu")
      submenu_requerimentos_suspensos
    end
  end

  def submenu_decisao
    puts "Acessando submenu"
    solicitacoes_menu.hover
    decisao_submenu.click
  end

  def submenu_processar_conferencia
    puts "Acessando submenu"
    solicitacoes_menu.hover
    processar_conferencia_submenu.click
  end

  def submenu_processos_devolvidos
    puts "Acessando submenu"
    solicitacoes_menu.hover
    tratar_pendencias_submenu.hover
    processos_devolvidos.click
  end

  def submenu_pesquisar_imigrante
    puts "Acessando submenu"
    imigrante_menu.hover
    consultar_imigrante_submenu.click
  end

  def submenu_manutencao_registro
    puts "Acessando submenu"
    imigrante_menu.hover
    manutencao_registro_submenu.click
  end

end
