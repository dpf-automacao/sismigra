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

  def aguardar_carregamento
    wait_until_carregamento_ajax_invisible
  end
end