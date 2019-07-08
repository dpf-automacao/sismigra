class MenuPage < SitePrism::Page

  # Mapeamento de elementos de preenchimento


  # Mapeamento de botoes, links

  element :solicitacoes_menu, :xpath, "//div[text()='Solicitações']"
  element :processar_atendimento_submenu, :xpath, "//span[text()='Processar Atendimento']"
  element :imigrante_menu, :xpath, '//div[text()="Imigrante"]'
  element :consultar_imigrante_submenu, :xpath, '//span[text()="Consultar Imigrante"]'
  element :emitir_certidao_submenu, :xpath, '//span[text()="Emitir Certidão"]'

  # Mapeamento de elementos para validação


  # Definindo metodo para selecionar submenu processar atendimento
  def processar_atendimento_sub_menu
    if(has_solicitacoes_menu?)
      solicitacoes_menu.hover
      has_processar_atendimento_submenu?
      processar_atendimento_submenu.click
    end
  end

end