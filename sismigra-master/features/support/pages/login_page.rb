class LoginPage < SitePrism::Page

  # Mapeamento de elementos de preenchimento

  element :usuario_input, "input[id='emailcti']"
  element :senha_input, "input[id='senhacti']"

  # Mapeamento de botoes, links

  element :acessar_btn, "input[id='acessarcti']"

  # Mapeamento de elementos para validação

  element :info_nome_span, "span[id='infoNome']"
  element :cardapio_sistemas, "div[id='caixa_central']"
  element :deslogar_btn, "img[src*='sair']"

  # Definindo metodo para entrar no siseg

  def logar_siseg(usuario, senha)

      visit("/")

      sleep(1)

      switch_to_window(windows.first)

      @usuario = usuario
      @senha = senha

      if(has_usuario_input?(wait:5))

          sleep(0.5)

          puts "Logando no SISEG"
          puts "Usuario: #{@usuario}"
          puts "Senha: #{@senha}"

          usuario_input.set(@usuario)
          has_senha_input?(wait:3)
          senha_input.set(@senha)
          has_acessar_btn?(wait:3)
          acessar_btn.click  
          
      elsif(has_usuario_input?(wait:5))

        sleep(0.5)

        puts "Logando no SISEG NOVAMENTE"
        puts "Usuario: #{@usuario}"
        puts "Senha: #{@senha}"

        usuario_input.set(@usuario)
        has_senha_input?(wait:3)
        senha_input.set(@senha)
        has_acessar_btn?(wait:3)
        acessar_btn.click  
        
      end

      if(has_cardapio_sistemas?(wait:5))

        sleep(0.5)

        puts "Logando no SISMIGRA"
        click_link "SISMIGRA"

        switch_to_window(windows.last)
        has_info_nome_span?(wait:5)

      elsif(has_cardapio_sistemas?(wait:5))

        sleep(0.5)

        puts "Logando no SISMIGRA NOVAMENTE"
        click_link "SISMIGRA"

        switch_to_window(windows.last)
        has_info_nome_span?(wait:5)

      end

  end


end