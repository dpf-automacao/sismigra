class MenuIntranetPage < SitePrism::Page

  # Mapeamento de elementos de preenchimento

  # Mapeamento de botoes, links

  element :solicitacoes_menu, :xpath, "//div[text()='Solicitações']"
  element :processar_atendimento_submenu, :xpath, "//span[text()='Processar Atendimento']"
  element :decisao_submenu, :xpath, '//span[text()="Decisão"]'
  element :imigrante_menu, :xpath, '//div[text()="Imigrante"]'
  element :consultar_imigrante_submenu, :xpath, '//span[text()="Consultar Imigrante"]'
  element :emitir_certidao_submenu, :xpath, '//span[text()="Emitir Certidão"]'
  element :situacao_requerimento_submenu, :xpath, '//span[text()="Situação de Requerimento"]'
  element :tratar_pendencias_submenu, :xpath, '//span[text()="Tratar Pendências"]'
  element :alteracao_endereco_submenu, :xpath, '//span[text()="Alteração de Endereço"]'

  # Mapeamento de elementos para validação


  # Definindo metodo para selecionar submenu processar atendimento

  def selecionar_menu_solicitacoes_intranet(tipo_menu)

    sleep(0.5)

    solicitacoes_menu.hover

    sleep(0.5)

    if(tipo_menu == "Situacao_do_Requerimento")

      menu_situacao_requerimento

    elsif(tipo_menu == "Processar_Atendimento")

      processar_atendimento_submenu.click

    elsif(tipo_menu == "Decisao")

      decisao_submenu.click

    elsif(tipo_menu == "Alteracao_Endereco")

      submenu_alteracao_endereco

    end

  end

  # DEFINIR MENUS E SUBMENUS

  def menu_situacao_requerimento

    if(has_situacao_requerimento_submenu?)
    
      situacao_requerimento_submenu.click

    end

  end

  def menu_processar_atendimento

    if(has_processar_atendimento_submenu?)

      processar_atendimento_submenu.click

    end

  end

  def submenu_decisao

    if(has_decisao_submenu?)
    
      decisao_submenu.click

    end

  end

  def submenu_tratar_pendencias

    if(has_tratar_pendencias_submenu?)
      
      tratar_pendencias_submenu.hover

    end
    
  end

  def submenu_alteracao_endereco
    
    submenu_tratar_pendencias

    if(has_alteracao_endereco_submenu?)

      alteracao_endereco_submenu.click

    end

  end


end