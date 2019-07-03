class MenuPage < SitePrism::Page

    # Mapeamento de elementos de preenchimento


    # Mapeamento de botoes, links

    element :solicitacoes_menu, "div[id='j_id33:j_id34_span']"
    element :processar_atendimento_submenu, "span[id='j_id33:j_id35:anchor']"

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