class MenuIntranetPage < SitePrism::Page

  # Mapeamento de elementos de preenchimento

  # Mapeamento de botoes, links

  element :solicitacoes_menu, :xpath, "//div[text()='Solicitações']"
  element :processar_atendimento_submenu, :xpath, "//span[text()='Processar Atendimento']"
  element :imigrante_menu, :xpath, '//div[text()="Imigrante"]'
  element :consultar_imigrante_submenu, :xpath, '//span[text()="Consultar Imigrante"]'
  element :emitir_certidao_submenu, :xpath, '//span[text()="Emitir Certidão"]'
  element :situacao_requerimento_submenu, :xpath, '//span[text()="Situação de Requerimento"]'

  # Mapeamento de elementos para validação


  # Definindo metodo para selecionar submenu processar atendimento

  def selecionar_menu_solicitacoes_intranet(tipo_menu)

    solicitacoes_menu.hover

    if(tipo_menu == "Situacao_do_Requerimento")

      menu_situacao_requerimento


    elsif(tipo_menu == "Processar_Atendimento")

      processar_atendimento_submenu.click

    end

  end
  
  def menu_situacao_requerimento

    situacao_requerimento_submenu.click

  end

  def menu_processar_atendimento

    processar_atendimento_submenu.click

  end



end