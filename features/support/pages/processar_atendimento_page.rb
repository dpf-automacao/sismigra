require_relative "../helpers/file_helper.rb"

class ProcessarAtendimentoPage < SitePrism::Page
    include FileHelper

    def initialize 

        @login = LoginPage.new
        @menu = MenuPage.new

    end

    # Mapeamento de elementos de preenchimento

    element :periodo_inicial_input, "input[id*='periodoInicioInputDate']"
    element :periodo_final_input, "input[id*='periodoFinalInputDate']"
    element :amparo_legal_input, "input[id*='inputText_comboAmparo']"

    # Mapeamento de botoes, links

    element :tipo_solicitacao_select, "select[id*='formulario-pesquisar:tipo']"
    element :situacao_requerimento_select, "select[id*='formulario-pesquisar:situacao']"
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"
    element :proximo_btn, "input[value*='Próximo']"
    element :uf_select, "select[id*='uf']"
    element :municipio_select, "select[id*='Municipios']"
    element :associar_checkbox, "input[name='j_id1801:dataTableEstrangeiros:0:j_id1823']"
    element :confirmar_identidade_btn, "input[value*='Confirmar Identidade']"
    element :confirmar_identidade_btn_disabled, "input[value*='Confirmar Identidade'][disabled='disabled']"
    element :documento_de_viagem_checkbox, "input[name='formulario-processar-cie:j_id1294:3:j_id1296']"
    element :adicionar_documento_btn, "a img[title='Adicionar']"

    # Mapeamento de elementos para validação e load

    element :carregamento_load, "img[src*='spinner.gif']"

    # Mapeamento de varios elementos

    elements :numeros_requerimentos, "td[id*='numeroRequerimento']"
    elements :btns_atendimento, "input[class='btnAtendimento']"

    # Definindo metodo para Acessar Processar atendimento

    def acessar_processar_atendimento

        @login.logar_siseg("dante.dlpf", "ctidpf")
        @menu.processar_atendimento_sub_menu

    end

    # Definindo metodo para pesquisar requerimento

    def pesquisar_solicitacao(tipo_solicitacao, situacao_requerimento)

        periodo_inicial_input.set("01/01/2000")
        periodo_final_input.set("03/07/2019")
        tipo_solicitacao_select.select(tipo_solicitacao)
        situacao_requerimento_select.select(situacao_requerimento)
        pesquisar_requerimento_btn.click

        has_numeros_requerimentos?

        @nr_requerimento = numeros_requerimentos[1].text
        gravar_dados("features/arquivos/requerimentos.txt", @nr_requerimento)
        btns_atendimento[1].click

    end

    # Definindo metodo para preencher Dados Pessoais

    def preencher_dados_pessoais(amparo_legal)

        amparo_legal_input.set(amparo_legal)
        sleep(1)
        amparo_legal_input.send_keys(:enter)
        avancar_proximo_processar_atendimento

    end

    # Definindo metodo para preencher Dados do Registro

    def preencher_dados_do_registro(uf, municipio)

        uf_select.select(uf)
        municipio_select.select(municipio)

    end

    # Definindo metodo para avancar para proxima pagina

    def avancar_proximo_processar_atendimento
    
        proximo_btn.click
        wait_until_carregamento_load_invisible

        if(has_associar_checkbox?(wait:1))

            binding.pry
            associar_checkbox.click
            wait_until_confirmar_identidade_btn_disabled_invisible
            has_confirmar_identidade_btn?
            confirmar_identidade_btn.click

        end

    end

    # Definindo metodo para adicionar documento

    def adicionar_documento

        if(has_documento_de_viagem_checkbox?)

            documento_de_viagem_checkbox.click
            has_adicionar_documento_btn?
            adicionar_documento_btn.click


        end

    end


end 