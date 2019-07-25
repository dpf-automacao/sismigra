# Executando metodo para tirar foto depois de cada cenario

After do |scenario|

  file_name = scenario.name.tr(' ', '-').downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui para ver o print da tela')

  puts "Cenario #{file_name} foi finalizado"

  switch_to_window(windows.last)
  page.execute_script "window.close();"
  switch_to_window(windows.first)

end

