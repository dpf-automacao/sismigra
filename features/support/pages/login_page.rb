class LoginPage < SitePrism::Page

    # Mapeamento de elementos de preenchimento

    element :usuario_input, "input[id='emailcti']"
    element :senha_input, "input[id='senhacti']"

    # Mapeamento de botoes, links

    element :acessar_btn, "input[id='acessarcti']"

    # Mapeamento de elementos para validação

    element :info_nome_span, "span[id='infoNome']"
    element :cardapio_sistemas, "div[id='caixa_central']"

    # Definindo metodo para entrar no siseg

    def logar_siseg(usuario, senha)

        visit("/")

        @usuario = usuario
        @senha = senha

        if(has_usuario_input?)

            usuario_input.set(@usuario)
            has_senha_input?
            senha_input.set(@senha)
            has_acessar_btn?
            acessar_btn.click
            has_cardapio_sistemas?
            click_link "SISMIGRA"

            switch_to_window(windows.last)
            has_info_nome_span?
            
        end

    end


end