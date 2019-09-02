class MenuInternetPage < SitePrism::Page

=begin

Autor: Vinicius Fernando Costa Coutinho
Data: 31/08/2019
Versão: 1.0
Contato: vfcoutinho@stefanini.com

=end

    set_url "http://10.2.96.51:8180/sismigra-internet/home.seam"

    #  MAPEAMENTO DE ELEMENTOS DA INTERNET


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
        wait_until_menu_registro_link_visible
        sleep(0.5)
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
            puts "Nenum menu foi localizado"
        end
    end

    def menu_registro
        puts "Clicando no menu de registro INTERNET"
        menu_registro_link.click
    end

    def menu_autorizacao_residencia
        puts "Clicando no menu de autorizacao INTERNET"
        menu_autorizacao_residencia_link.click
    end

    def menu_alteracao_prazo
        puts "Clicando no menu de alteracao de prazo INTERNET"
        menu_alteracao_prazo_link.click
    end

    def menu_recad_extemporaneo
        puts "Clicando no menu de recadastramento extemporaneo INTERNET"
        menu_recad_extemporaneo_link.click
    end

    def menu_substituicao_crnm
        puts "Clicando no menu de substituicao de crnm INTERNET"
        menu_substituicao_crnm_link.click
    end

    def menu_segunda_via_crnm
        puts "Clicando no menu de segunda via INTERNET"
        menu_segunda_via_crnm_link.click
    end

    def menu_alteracao_endereco
        puts "Clicando no menu de alteracao INTERNET"
        menu_alteracao_endereco_link.click
    end

    def menu_verificar_protocolo
        puts "Clicando no menu de verificacao de protocolo INTERNET"
        menu_verificar_protocolo_link.click
    end
    
    def menu_andamento_requerimento
        puts "Clicando no menu de andamento do requerimento INTERNET"
        menu_andamento_requerimento_link.click
    end
    

end