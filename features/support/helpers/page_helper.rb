require_relative 'file_helper.rb'

class PageHelper < SitePrism::Page
  include FileHelper

  def initialize
    @menu = MenuPage.new
    @login = LoginPage.new
  end

  element :carregamento_ajax, "img[src*='spinner.gif']"

  def logar_sismigra
    @login.load
    @login.logar('dante.dlpf', 'ctidpf')
    click_link 'SISMIGRA'
    mudar_foco
  end

  def mudar_foco
    switch_to_window(windows.last)
  end

  def consultar_imigrante_submenu
    @menu.imigrante_menu.hover
    @menu.consultar_imigrante_submenu.click
  end

  def emitir_certidao_submenu
    @menu.imigrante_menu.hover
    @menu.emitir_certidao_submenu.click
  end

  def situacao_requerimento_submenu
    @menu.solicitacoes_menu.hover
    @menu.situacao_requerimento_submenu.click
  end

  def aguardar_carregamento
    wait_until_carregamento_ajax_invisible
  end

  def visualizar_impressao
    mudar_foco
    sleep(5)
  end
end