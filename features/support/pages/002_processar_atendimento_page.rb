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
    element :amparo_legal_disabled_input, "input[id*='inputText_comboAmparo'][disabled='disabled']"
    element :telefone_contato_input, "input[id*='telefoneResidencial']"
    element :resultado_da_pesquisa_textarea, "fieldset[class='mTop10px'] textarea[id*='resultadoPesquisa']"
    element :justificativa_alteracoes_textarea, "table[id='modalJustificativaAlteracaoDadosPessoaisContentTable'] textarea"
    element :justificativa_documentos_textarea, "table[id='modalJustificativaDocumentoContentTable'] textarea"

    # Mapeamento de botoes, links

    element :tipo_solicitacao_select, "select[id*='formulario-pesquisar:tipo']"
    element :situacao_requerimento_select, "select[id*='formulario-pesquisar:situacao']"
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"
    element :nao_possui_RNM, "input[id*='idPossuiRnm'][value='NAO']"
    element :dependente_chamante, "input[id*='idDependente'][value='NAO']"
    element :proximo_btn, "input[value*='Próximo']"
    element :uf_select, "select[id*='uf']"
    element :municipio_select, "select[id*='Municipios']"
    element :associar_checkbox, "input[name*='dataTableEstrangeiros']"
    element :confirmar_identidade_btn, "input[value*='Confirmar Identidade']"
    element :confirmar_identidade_btn_disabled, "input[value*='Confirmar Identidade'][disabled='disabled']"
    # elements :docs_obrigatorios, '#formulario-processar-cie\:idDocumentosObrigatorios' # input[type="checkbox"]
    element :confirmar_pagamento_gru_radio, "input[name*='ConfirmaPagamentoGRU'][value='SIM']"
    element :fotos, :xpath, "//label[text()='Duas fotos 3x4;']/../../td/input"
    element :documento_de_viagem_checkbox, :xpath, "//label[text()='Documento de viagem;']/../../td/input"
    element :comprovante_filiacao, :xpath, "//label[text()='Comprovante de filiação']/../../td/input"
    element :declaracao_endereco, :xpath, "//label[text()='Declaração de endereço eletrônico']/../../td/input"
    element :certidao_nada_consta, :xpath, "//label[text()='Certidões de antecedentes criminais de onde residiu nos últimos cinco anos']/../../td/input"
    element :comprovante_domicilio, :xpath, "//label[text()='Comprovante de domicílio na localidade fronteiriça;']/../../td/input"
    element :adicionar_documento_btn, "a img[title='Adicionar']"
    element :anexar_arquivo_btn, "input[id*='idUploadArquivoDocumentoAdicionar']"
    element :salvar_btn, "input[value='Salvar']"
    element :concluir_btn, "input[value='Concluir']"
    element :encerrar_btn, "input[value='Encerrar']"
    element :confirmar_alteracoes_btn, "table[id='modalJustificativaAlteracaoDadosPessoaisContentTable'] input[value*='Confirmar']"
    element :confirmar_documentacao_btn, "table[id='modalJustificativaDocumentoContentTable'] input[value*='Confirmar']"
    element :novo_imigrante_btn, "input[value='Novo Imigrante']"
    element :unidade_vinculada_select, "select[id*='unidade_change']"
    element :outros_documentos_input, "input[type='text'][name*='processar'][value='']"

    # Mapeamento das abas de Processar Atendimento

    element :aba_dados_pessoais, "td[id*='DadosPessoais_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_registro, "td[id*='DadosRegistro_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_endereco, "td[id*='Endereco_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_documento, "td[id*='Documentos_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_resultado_pesquisa, "td[id*='Pesquisa_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_previa_carteira, "td[id*='PreviaCarteira_lbl'][class*='dr-tbpnl-tb-act']"


    # Mapeamento de elementos para validação e load

    element :carregamento_load, "img[src*='spinner.gif']"
    element :dados_divergentes_erro, "dl[id='mensagens'] dt[class='mensagem_erro']"
    element :sugestao_amparo_load, "td[class*='suggestionSelectValue']"

    # Mapeamento de varios elementos

    elements :numeros_requerimentos, "td[id*='numeroRequerimento']"
    elements :btns_atendimento, "input[class='btnAtendimento']"
    elements :mensagem_erro, "div.cRed"
    elements :arquivos_anexados, "td a[onclick*='idTabelaArquivos']"
    elements :alterar_dados_dos_registros, "input[title='Alterar dados do registro da pesquisa.']"
    elements :tipo_de_ducumentos_checkbox, "input[type='checkbox']"
    elements :remover_doc_recebidos_img, "img[title='Remover']" 


    # elements :tipo_de_documentos, "td[id*='formulario-processar-cie'] input[type='checkbox']"

    # Definindo metodo para Acessar Processar atendimento

    def acessar_processar_atendimento

        @login.logar_siseg("dante.dlpf", "ctidpf")
        @menu.processar_atendimento_sub_menu

    end

    # Definindo metodo para pesquisar requerimento

    def pesquisar_solicitacao(tipo_solicitacao, situacao_requerimento)

        @tipo_solicitacao = tipo_solicitacao
        @situacao_requerimento = situacao_requerimento
        @periodo_inicial = "01/01/2000"
        @periodo_final = "03/07/2019"

        periodo_inicial_input.set(@periodo_inicial)
        periodo_final_input.set(@periodo_final)
        tipo_solicitacao_select.select(@tipo_solicitacao)
        situacao_requerimento_select.select(@situacao_requerimento)

        puts "Pesquisando tipo de solicitação #{@tipo_solicitacao} em situacao #{@situacao_requerimento} no periodo de #{@periodo_inicial} a #{@periodo_final}"

        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_numeros_requerimentos_visible
        @nr_requerimento = numeros_requerimentos[1].text

        gravar_dados("features/arquivos/requerimentos.txt", @nr_requerimento)
        btns_atendimento[1].click
        wait_until_carregamento_load_invisible

    end

# 1 - INICIO METODOS PARA DADOS PESSOAIS ---------------------------------------------------------------------------------------------------------

    def preencher_amparo_legal
        
      if(@tipo_solicitacao != "Substituição de CRNM")

        if(wait_until_amparo_legal_disabled_input_invisible)

            @amparo_legal = "36 - ART  "

            puts "Preenchendo amparo legal #{@amparo_legal}"

            amparo_legal_input.click.set(@amparo_legal)
            wait_until_sugestao_amparo_load_visible
            amparo_legal_input.send_keys(:enter)
            wait_until_carregamento_load_invisible

        end

      else

        puts "Tipo de solicitação diferente de Substituicao de CRMM"

      end

    end

    def preencher_rnm

        if(@tipo_solicitacao != "Alteração de Prazo")

            puts "Selecionando NAO RNM"
            wait_until_nao_possui_RNM_visible
            nao_possui_RNM.click

        else

            puts "Tipo de solicitação diferente de Alteracao de Prazo"

        end


    end

    def preencher_dependente_chamente

        puts "Selecionando NAO Chamente"

        wait_until_dependente_chamante_visible
        dependente_chamante.click

    end

    def preencher_dados_pessoais

        if(wait_until_aba_dados_pessoais_visible)

            preencher_amparo_legal
            preencher_rnm
            preencher_dependente_chamente
            avancar_proximo_processar_atendimento

        end

    end

# 1 - INICIO METODOS PARA DADOS PESSOAIS ---------------------------------------------------------------------------------------------------------


# 2 - INICIO METODOS PARA DADOS DO REGISTRO ---------------------------------------------------------------------------------------------------------


    def preecher_uf_e_municipio
        
        wait_until_uf_select_visible

        @uf = "Acre"
        @municipio = "Acrelândia"

        puts "Preenchendo uf #{@uf} e municipio #{@municipio}"

        uf_select.select(@uf)
        wait_until_carregamento_load_invisible

        municipio_select.select(@municipio)
        wait_until_carregamento_load_invisible

    end


    def preencher_dados_do_registro

        if(wait_until_aba_dados_registro_visible)

            preecher_uf_e_municipio
            avancar_proximo_processar_atendimento

        end

    end

# 2 - FIM METODOS PARA DADOS DO REGISTRO ---------------------------------------------------------------------------------------------------------

# 3 - INICIO METODOS PARA DADOS DE ENDERECO ---------------------------------------------------------------------------------------------------------

    def preencher_endereco

        if(wait_until_aba_dados_endereco_visible)

            @unidade_vinculada = "DELEMIG/DREX/SR/PF/SP"
            @telefone_contato = "61999999999"

            puts "Preenchendo unidade vinculada #{@unidade_vinculada} e telefone #{@telefone_contato}"

            wait_until_unidade_vinculada_select_visible
            unidade_vinculada_select.select(@unidade_vinculada)

            wait_until_telefone_contato_input_visible
            telefone_contato_input.click.set(@telefone_contato)

            avancar_proximo_processar_atendimento

        end

    end

# 3 - FIM METODOS PARA DADOS DE ENDERECO ---------------------------------------------------------------------------------------------------------

# 4 - INICIO METODOS PARA DADOS DE DOCUMENTACAO ---------------------------------------------------------------------------------------------------------

    def selecionar_documentos_obrigatorios

        @indice = 0

        if(wait_until_tipo_de_ducumentos_checkbox_visible)

            @tamanho_documentos = tipo_de_ducumentos_checkbox.size

            while(@indice < @tamanho_documentos) do

                sleep(0.5)
                tipo_de_ducumentos_checkbox[@indice].check
                puts "Selecionando tipo de documentacao " + tipo_de_ducumentos_checkbox[@indice].text
                @indice += 1

            end
        
        end

        if(wait_until_outros_documentos_input_visible)

            @outros_documentos_texto = "Outra documentacao"
            puts "Preechendo #{@outros_documentos_texto}"
            outros_documentos_input.set(@outros_documentos_texto)
            adicionar_documento_btn.click
            wait_until_remover_doc_recebidos_img_visible

        end
        
    end

    # def justificativa_documentos
                
    #     wait_until_justificativa_documentos_textarea_visible)

    #     justificativa_documentos_textarea.click.set("Justificando ausencia de documentacao")
    #     has_confirmar_documentacao_btn?
    #     confirmar_documentacao_btn.click
        
    # end

    def preencher_documentos

        if(wait_until_aba_dados_documento_visible)

            confirmar_pagamento_gru_radio.click

            selecionar_documentos_obrigatorios

            anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
            wait_until_arquivos_anexados_visible

            avancar_proximo_processar_atendimento

        end

    end

# 4 - FIM METODOS PARA DADOS DE DOCUMENTACAO ---------------------------------------------------------------------------------------------------------

# 5 - INICIO METODOS PARA RESULTADO DE PESQUISA ---------------------------------------------------------------------------------------------------------

    def preencher_resultado_da_pesquisa

        if(wait_until_aba_resultado_pesquisa_visible)

            @indice = 0
            @tamanho_alterar_dados = alterar_dados_dos_registros.size
            @justificativa_resultado_pesquisa = "NADA CONSTA"

            while(@indice < @tamanho_alterar_dados)

                alterar_dados_dos_registros[@indice].click
                resultado_da_pesquisa_textarea.set(@justificativa_resultado_pesquisa)
                puts "Preechendo justificativa da pesquisa #{@justificativa_resultado_pesquisa}"
                salvar_btn.click
                wait_until_carregamento_load_invisible
                @indice += 1

            end

            avancar_proximo_processar_atendimento

        end

    end

# 5 - FIM METODOS PARA RESULTADO DE PESQUISA  ---------------------------------------------------------------------------------------------------------

# 6 - INICIO METODOS PARA VISUALIZACAO DA PREVIA DA CARTEIRA  ---------------------------------------------------------------------------------------------------------

    def visualizar_previa_carteira

        if(wait_until_aba_previa_carteira_visible)

            puts "Visualizando e Encerrando Previa da carteira"
            wait_until_concluir_btn_visible
            concluir_btn.click
            wait_until_encerrar_btn_visible
            page.assert_text('Dados salvos com sucesso')
            encerrar_btn.click

        end

    end

# 6 - FIM METODOS PARA VISUALIZACAO DA PREVIA DA CARTEIRA  ---------------------------------------------------------------------------------------------------------


# 7 - INICIO METODOS PARA AVANCAR PARA PROXIMO ---------------------------------------------------------------------------------------------------------

    def associar_imigrante

        if(has_associar_checkbox?(wait:1))

            if(@tipo_solicitacao == "Alteração de Prazo" || @tipo_solicitacao == "Substituição de CRNM")

                associar_checkbox.click
                wait_until_confirmar_identidade_btn_disabled_invisible

                wait_until_confirmar_identidade_btn_visible
                confirmar_identidade_btn.click
                wait_until_carregamento_load_invisible

                if(wait_until_proximo_btn_visible)

                    proximo_btn.click
                    wait_until_carregamento_load_invisible

                end


                if(has_dados_divergentes_erro?(wait:20))
            
                    proximo_btn.click
                    wait_until_carregamento_load_invisible

                    if(has_justificativa_alteracoes_textarea?(wait:10))
            
                        justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")
                        confirmar_alteracoes_btn.click
                        wait_until_carregamento_load_invisible
            
                    end

            
                end

            end

        end

    end


    def avancar_proximo_processar_atendimento

        sleep(1)

        puts "Clicando Proximo"
        proximo_btn.click
        wait_until_carregamento_load_invisible

        associar_imigrante

        if(has_novo_imigrante_btn?(wait:1))

            if(wait_until_novo_imigrante_btn_visible)

                puts "Selecionando novo imigrante"
                novo_imigrante_btn.click
                puts "Clicando Proximo"
                proximo_btn.click
                wait_until_carregamento_load_invisible


    
            end

        end

        sleep(1)

    end

# 7 - FIM METODOS PARA AVANCAR PARA PROXIMO ---------------------------------------------------------------------------------------------------------

end