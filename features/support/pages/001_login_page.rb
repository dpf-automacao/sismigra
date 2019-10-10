class LoginPage < SitePrism::Page

=begin

Autor: Vinicius Fernando Costa Coutinho
Data: 31/08/2019
Versão: 1.0
Contato: vfcoutinho@stefanini.com

=end

  # Mapeamento de elementos de preenchimento

  element :usuario_input, "input[id='emailcti']"
  element :senha_input, "input[id='senhacti']"

  # Mapeamento de botoes, links

  element :acessar_btn, "input[id='acessarcti']"
  element :siseg_btn, "a[href='https://projetoshom.dpf.gov.br/siseg/siseg.php']"

  # Mapeamento de elementos para validação

  element :info_nome_span, "span[id='infoNome']"
  element :cardapio_sistemas_div1, "div[id='portal-breadcrumbs']"
  element :cardapio_sistemas_div2, "div[id='caixa_central']"
  element :login_acesso_div, "div[id='loginAcesso']"
  element :deslogar_btn, "img[src*='sair']"

  # Mapeamento de elementos para verificacao no siseg
  element :sismigra_siseg_link, "a[id='216']"


  # Definindo metodo para entrar no siseg

  def logar_siseg(usuario, senha)

      visit("/")

      @usuario = usuario
      @senha = senha

      sleep(2)

      if(has_siseg_btn?(wait:5))
        sleep(2)
        siseg_btn.click
        sleep(1)
        switch_to_window(windows.last)
      end

      if(has_usuario_input?(wait:5))
          puts "Logando no SISEG"
          puts "Usuario: #{@usuario}"
          puts "Senha: #{@senha}"
          sleep(0.5)
          usuario_input.set(@usuario)
          has_senha_input?(wait:3)
          sleep(0.5)
          senha_input.set(@senha)
          has_acessar_btn?(wait:3)
          sleep(0.5)
          acessar_btn.click
          switch_to_window(windows.last)
      end

      if(has_cardapio_sistemas_div1?(wait:5))
        has_cardapio_sistemas_div2?(wait:5)
        has_sismigra_siseg_link?(wait:5)
        has_login_acesso_div?(wait:5)
        switch_to_window(windows.last)
        puts "Logando no SISMIGRA"
        sleep(0.5)
        click_link "SISMIGRA"
        switch_to_window(windows.last)
        has_info_nome_span?(wait:5)
        sleep(0.5)
      end

  end


end