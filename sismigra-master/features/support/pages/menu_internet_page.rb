class MenuInternetPage < SitePrism::Page

    set_url "http://10.2.96.51:8180/sismigra-internet/home.seam"

    element :menu_registro_link, :xpath, "//a[text()='Registro']"
    element :menu_autorizacao_residencia_link, :xpath, "//a[text()='Autorização de Residência']"
    element :menu_alteracao_prazo_link, :xpath, "//a[text()='Alteração de Prazo']"
    element :menu_recad_extemporaneo_link, :xpath, "//a[text()='Recadastramento Extemporâneo']"
    element :menu_substituicao_crnm_link, :xpath, "//a[text()='Substituição de CRNM']"
    element :menu_segunda_via_crnm_link, :xpath, "//a[text()='Segunda via de CRNM']"
    element :menu_alteracao_endereco_link, :xpath, "//a[text()='Solicitar Alteração Endereço']"
    element :menu_verificar_protocolo_link, :xpath, "//a[text()='Verificar Protocolo']"
    element :menu_andamento_requerimento_link, :xpath, "//a[text()='Andamento requerimento']"

    def selecionar_menu_internet(tipo_solicitacao)

        load

        if(tipo_solicitacao == "Registro")

            menu_registro
        
        elsif(tipo_solicitacao == "Autorizacao_Residencia")

            menu_autorizacao_residencia

        elsif(tipo_solicitacao == "Alteracao_de_Prazo")

            menu_alteracao_prazo

        elsif(tipo_solicitacao == "Recadastramento_Extemporaneo")

            menu_recad_extemporaneo

        elsif(tipo_solicitacao == "Substituicao_de_CRNM")

            menu_substituicao_crnm

        elsif(tipo_solicitacao == "Segunda_via_CRNM")

            menu_segunda_via_crnm

        elsif(tipo_solicitacao == "Alteracao_Endereco")

            menu_alteracao_endereco

        elsif(tipo_solicitacao == "Verificacao_de_Protocolo")

            menu_verificar_protocolo


        elsif(tipo_solicitacao == "Andamento_do_Requerimento")

            menu_andamento_requerimento

        else


        end

    end

    def menu_registro

        if(has_menu_registro_link?)

            menu_registro_link.click

        end

    end

    def menu_autorizacao_residencia

        if(has_menu_autorizacao_residencia_link?)

            menu_autorizacao_residencia_link.click

        end

    end

    def menu_alteracao_prazo

        if(has_menu_alteracao_prazo_link?)

            menu_alteracao_prazo_link.click

        end

    end

    def menu_recad_extemporaneo

        if(has_menu_recad_extemporaneo_link?)

            menu_recad_extemporaneo_link.click

        end

    end

    def menu_substituicao_crnm

        if(has_menu_substituicao_crnm_link?)

            menu_substituicao_crnm_link.click

        end

    end

    def menu_segunda_via_crnm

        if(has_menu_segunda_via_crnm_link?)

            menu_segunda_via_crnm_link.click

        end

    end

    def menu_alteracao_endereco

        if(has_menu_alteracao_endereco_link?)

            menu_alteracao_endereco_link.click

        end

    end

    def menu_verificar_protocolo

        if(has_menu_verificar_protocolo_link?)

            menu_verificar_protocolo_link.click

        end

    end
    
    def menu_andamento_requerimento

        if(has_menu_andamento_requerimento_link?)

            menu_andamento_requerimento_link.click

        end

    end
    

end