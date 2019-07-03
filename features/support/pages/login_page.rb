class LoginPage < SitePrism::Page

    # Mapeamento de elementos de preenchimento

    element :usuario_input, "input[id='emailcti']"
    element :senha_input, "input[id='senhacti']"

    # Mapeamento de botoes, links

    element :acessar_input, "input[id='acessarcti']"
    element :sismigra_link, "a[id='216'] img"

    # Mapeamento de elementos para validação

    element :info_nome_span, "span[id='infoNome']"

    # Definindo metodo para entrar no siseg

    def logar_siseg(usuario, senha)

        visit("/")

        @usuario = usuario
        @senha = senha

        if(has_usuario_input?)

            usuario_input.set(@usuario)
            has_senha_input?
            senha_input.set(@senha)
            has_acessar_input?
            acessar_input.click

            has_sismigra_link?
            sismigra_link.click

            switch_to_window(windows.last)
            has_info_nome_span?
            
        end

    end


end