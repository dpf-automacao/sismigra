require_relative 'file_helper.rb'

class PageHelper < SitePrism::Page
  include FileHelper

  def mudar_foco
    switch_to_window(windows.last)
  end
end