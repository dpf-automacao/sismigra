require_relative "../helpers/file_helper.rb"

class SolicitacoesIntranetPage < SitePrism::Page

    include FileHelper

    # MAPEAMENTO DE ELEMENTOS DE PESQUISA DO PROCESSAR ATENDIMENTO

    element :periodo_inicial_input, "input[id*='periodoInicioInputDate']"
    element :periodo_final_input, "input[id*='periodoFinalInputDate']"
    element :tipo_solicitacao_select, "select[id*='formulario-pesquisar:tipo']"
    element :situacao_requerimento_select, "select[id*='formulario-pesquisar:situacao']"
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"
    element :alterar_tipo_solicitacao_btn, "input[title*='Alterar o Tipo de Solicitação']"
    element :novo_tipo_solicitacao_select, "select[id*='alteracaoDeTipoSolicitacao']"
    element :confirmar_alterar_tipo_solicitacao_btn, "input[id='alteracaoDeTipoSolicitacao:ok']"

    # MAPEAMENTO DE ELEMENTOS DA ABA DADOS PESSOAIS

    element :aba_dados_pessoais, "td[id*='DadosPessoais_lbl'][class*='dr-tbpnl-tb-act']"
    element :primeira_aba, 'td[id*="DadosPessoais_lbl"]'
    element :tipo_registro_select, "select[name*='formulario-processar-cie:j_id124:j_id140']"
    element :amparo_legal_input, "input[id*='inputText_comboAmparo']"
    element :amparo_legal_disabled_input, "input[id*='inputText_comboAmparo'][disabled='disabled']"
    element :sugestao_amparo_load, "td[class*='suggestionSelectValue']"
    element :associar_checkbox, "input[name*='dataTableEstrangeiros']"
    element :confirmar_identidade_btn, "input[value*='Confirmar Identidade']"
    element :confirmar_identidade_btn_disabled, "input[value*='Confirmar Identidade'][disabled='disabled']"
    element :novo_imigrante_btn, "input[value='Novo Imigrante']"
    element :justificativa_alteracoes_textarea, "table[id='modalJustificativaAlteracaoDadosPessoaisContentTable'] textarea"
    element :confirmar_alteracoes_btn, "table[id='modalJustificativaAlteracaoDadosPessoaisContentTable'] input[value*='Confirmar']"
    element :dados_divergentes_erro, "dl[id='mensagens'] dt[class='mensagem_erro']"

    elements :btns_atendimento, "input[class='btnAtendimento']"
    elements :mensagem_erro, "div.cRed"
    
    # MAPEAMENTO DE ELEMENTOS DA ABA DADOS DE REGISTRO

    element :aba_dados_registro, "td[id*='DadosRegistro_lbl'][class*='dr-tbpnl-tb-act']"
    element :editar_prazos_btn, 'input[value="Editar Prazo(s)"]'
    element :justificativa_alteracao_prazo, 'textarea[id*="formModalJustificativaCancelamentoCalculoPrazo"]'
    element :data_estada_input, 'input[id*="dataEstadaRegistroInputDate"]'
    element :data_validade_carteira_input, 'input[id*="dataValidadeCarteiraInputDate"]'
    element :recalcular_prazos_btn, "input[value='Recalcular Prazos']"
    
    # MAPEAMENTO DE ELEMENTOS DA ABA DADOS DE ENDERECO

    element :aba_dados_endereco, "td[id*='Endereco_lbl'][class*='dr-tbpnl-tb-act']"
    element :uf_select, "select[id*='uf']"
    element :municipio_select, "select[id*='Municipios']"
    element :unidade_vinculada_select, "select[id*='unidade_change']"

    # MAPEAMENTO DE ELEMENTOS DA ABA DE DOCUMENTACAO

    element :aba_dados_documento, "td[id*='Documentos_lbl'][class*='dr-tbpnl-tb-act']"
    element :confirmar_pagamento_gru_radio, "input[name*='ConfirmaPagamentoGRU'][value='SIM']"
    element :fotos, :xpath, "//label[text()='Duas fotos 3x4;']/../../td/input"
    element :documento_de_viagem_checkbox, :xpath, "//label[text()='Documento de viagem;']/../../td/input"
    element :comprovante_filiacao, :xpath, "//label[text()='Comprovante de filiação']/../../td/input"
    element :declaracao_endereco, :xpath, "//label[text()='Declaração de endereço eletrônico']/../../td/input"
    element :certidao_nada_consta, :xpath, "//label[text()='Certidões de antecedentes criminais de onde residiu nos últimos cinco anos']/../../td/input"
    element :comprovante_domicilio, :xpath, "//label[text()='Comprovante de domicílio na localidade fronteiriça;']/../../td/input"
    element :outros_documentos_input, "input[type='text'][name*='processar'][value='']"
    element :adicionar_documento_btn, "a img[title='Adicionar']"
    element :anexar_arquivo_btn, "input[id*='idUploadArquivoDocumentoAdicionar']"
    element :justificativa_documentos_textarea, "textarea[id*='justificar-documento']"
    element :confirmar_justificativa_documento, "input[id*='justificar-documento'][value='Confirmar']"

    elements :tipo_de_ducumentos_checkbox, "input[type='checkbox']"
    elements :arquivos_anexados, "td a[onclick*='idTabelaArquivos']"
    elements :remover_doc_recebidos_img, "img[title='Remover']"

    # MAPEAMENTO DE ELEMENTOS DA ABA DE RESULTADO DA PESQUISA

    element :aba_resultado_pesquisa, "td[id*='Pesquisa_lbl'][class*='dr-tbpnl-tb-act']"
    element :resultado_da_pesquisa_textarea, "fieldset[class='mTop10px'] textarea[id*='resultadoPesquisa']"
    element :salvar_btn, "input[value='Salvar']"

    elements :alterar_dados_dos_registros, "input[title='Alterar dados do registro da pesquisa.']"
    

    # MAPEAMENTO DE ELEMENTOS DA ABA DE PREVIA DA CARTEIRA

    element :aba_previa_carteira, "td[id*='PreviaCarteira_lbl'][class*='dr-tbpnl-tb-act']"
    element :concluir_btn, "input[value='Concluir']"
    element :encerrar_btn, "input[value='Encerrar']"
    element :suspender_btn, "input[value='Suspender']"
    element :justificativa_suspensao_textarea, "textarea[name*='idForm']"
    element :gerar_termo_suspensao_btn, "input[value*='Gerar Termo']"
    element :processo_suspenso_msg_sucesso, "dt[class='mensagem_sucesso']"
    element :div_processo_suspenso, "div[id='viewer']"

    # MAPEAMENTO DE ELEMENTOS DA ALTERACAO DE ENDERECO

    element :deferir_alteracao_endereco_btn, "input[value='Deferir']"
    element :encerrar_alteracao_endereco_btn, "input[value='Encerrar']"

    elements :btns_alteracao_endereco, "input[title='Avaliar Alteração de Endereço']"

    # MAPEAMENTO DE ELEMENTOS DE SITUACAO DO REQUERIMENTO

    element :status_requerimento_aberto, "td[id*='status'] img[src*='aberto']"
    element :status_requerimento_analise, "td[id*='status'] img[src*='analise']"
    element :status_requerimento_suspenso, "td[id*='status'] img[src*='suspenso']"
    element :status_requerimento_processamento, "td[id*='status'] img[src*='processamento']"

    element :btn_pesquisar, 'input[value="Pesquisar"]'

    # MAPEAMENTO DE ELEMENTOS GERAIS

    element :proximo_btn, "input[value*='Próximo']"
    element :icone_inicio_btn, "a[class='iconInicio']"
    element :formulario_pagina_inicial, "div[id*='formulario-home']"
    element :carregamento_load, "img[src*='spinner.gif']"
    element :nr_requerimento_situacao_input, 'input[id*="numeroRequerimento"]'


    # MAPEAMENTO DECISAO


    def pesquisar_solicitacao(tipo_solicitacao, situacao_requerimento)

        @tipo_solicitacao = tipo_solicitacao
        @situacao_requerimento = situacao_requerimento
        @dados_requerimento_pesquisa = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        @periodo_inicial = "01/01/1900"
        @data_atual = Time.now
        @periodo_final = @data_atual.strftime("%d/%m/%Y")

        # MUDAR CONTROLADORES PARA NOME DO CAMPO NORMAL PARA SELECIONAR NA PESQUISA

        if(@tipo_solicitacao == "Autorizacao_Residencia")

            @tipo_solicitacao = "Autorização de Residência"

        elsif(@tipo_solicitacao == "Alteracao_de_Prazo")

            @tipo_solicitacao = "Alteração de Prazo"

        elsif(@tipo_solicitacao == "Recadastramento_Extemporaneo")

            @tipo_solicitacao = "Recadastramento Extemporâneo"

        elsif(@tipo_solicitacao == "Substituicao_de_CRNM")

            @tipo_solicitacao = "Substituição de CRNM"

        elsif(@tipo_solicitacao == "Segunda_via_CRNM")

            @tipo_solicitacao = "Segunda via de CRNM"

        elsif(@tipo_solicitacao == "Alteracao_Endereco")

            @tipo_solicitacao == "Alteracao_Endereco"

        end

        sleep(1)

        wait_until_nr_requerimento_situacao_input_visible
        nr_requerimento_situacao_input.click.set(@dados_requerimento_pesquisa[0].chomp)

        if(@tipo_solicitacao != "Alteracao_Endereco")

            wait_until_tipo_solicitacao_select_visible
            tipo_solicitacao_select.select(@tipo_solicitacao)
            wait_until_situacao_requerimento_select_visible
            situacao_requerimento_select.select(@situacao_requerimento)

        end

        sleep(1)

        wait_until_periodo_inicial_input_visible
        periodo_inicial_input.click.set(@periodo_inicial)
        wait_until_periodo_final_input_visible
        periodo_final_input.click.set(@periodo_final)

        puts "Pesquisando Requerimento de numero:#{@dados_requerimento_pesquisa}"

        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        sleep(1)

    end

    def preencher_amparo_legal

      if not(amparo_legal_input.disabled? || amparo_legal_input.readonly?)

        @amparo_legal = "36 - ART  "

        puts "Preenchendo amparo legal #{@amparo_legal}"

        wait_until_amparo_legal_input_visible
        amparo_legal_input.click.set(@amparo_legal)
        wait_until_sugestao_amparo_load_visible
        amparo_legal_input.send_keys(:enter)
        wait_until_carregamento_load_invisible

     else

       puts "Amparo não habilitado"

     end

    end

    def alterar_tipo_de_solicitacao(tipo_solicitacao)

        @tipo_solicitacao = tipo_solicitacao

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select(@tipo_solicitacao)
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para #{@tipo_solicitacao}"

        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para #{@tipo_solicitacao}"

        sleep(1)

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Registro")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Registro"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Registro")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para Registro"

        sleep(1)

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Registro")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Autorização de Residência")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Autorizacao de Residencia"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Autorização de Residência")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para Autorizacao de Residencia"
        

        sleep(1)

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Autorização de Residência")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Alteração de Prazo")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Alteracao de Prazo"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Alteração de Prazo")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para Alteracao de Prazo"

        sleep(1)

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Alteração de Prazo")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Recadastramento Extemporaneo"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para Recadastramento Extemporaneo"

        sleep(1)

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Substituição de CRNM")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Substituicao de CRNM"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Substituição de CRNM")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para Substituicao de CRNM"

        sleep(1)

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Substituição de CRNM")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select("Segunda via de CRNM")
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para Segunda via de CRNM"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Segunda via de CRNM")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        sleep(1)

        puts "Pesquisando tipo de solicitacao para Substituicao de CRNM"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select("Segunda via de CRNM")
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        wait_until_alterar_tipo_solicitacao_btn_visible
        alterar_tipo_solicitacao_btn.click
        wait_until_novo_tipo_solicitacao_select_visible
        novo_tipo_solicitacao_select.select(@tipo_solicitacao)
        wait_until_confirmar_alterar_tipo_solicitacao_btn_visible
        confirmar_alterar_tipo_solicitacao_btn.click

        puts "Alterando tipo de solicitacao para #{@tipo_solicitacao}"

        wait_until_tipo_solicitacao_select_visible
        tipo_solicitacao_select.select(@tipo_solicitacao)
        wait_until_pesquisar_requerimento_btn_visible
        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible

        puts "Pesquisando tipo de solicitacao para #{@tipo_solicitacao}"

        sleep(1)

    end


    def preencher_dados_pessoais

        if(@tipo_solicitacao == "Alteracao_Endereco")

            wait_until_btns_alteracao_endereco_visible
            btns_alteracao_endereco[0].click
            wait_until_carregamento_load_invisible

        else

            wait_until_btns_atendimento_visible
            btns_atendimento[0].click
            wait_until_carregamento_load_invisible

        end

        wait_until_primeira_aba_visible
        primeira_aba.click
        wait_until_carregamento_load_invisible

        if(wait_until_aba_dados_pessoais_visible)

            if(@tipo_solicitacao != "Alteracao_Endereco")

                @tipo_registro_req = "Registro de Visto Consular"
                
                # @tipo_registro_req = "Registro após publicação no Diário Oficial da União"

                if(has_tipo_registro_select?(wait:5))

                    tipo_registro_select.select(@tipo_registro_req)

                end

                preencher_amparo_legal

            end

            avancar_proximo_processar_atendimento

        end

    end


    def preecher_uf_e_municipio

        @uf = "Acre"
        @municipio = "Acrelândia"

        if(has_uf_select?(wait:3))

            puts "Preenchendo uf #{@uf} e municipio #{@municipio}"

            wait_until_uf_select_visible
            uf_select.select(@uf)
            wait_until_carregamento_load_invisible

            wait_until_municipio_select_visible
            municipio_select.select(@municipio)
            wait_until_carregamento_load_invisible

        else

            puts "UF e Município desabilitado"

        end

    end

    def alterar_prazos

      if (@tipo_solicitacao == "Alteração de Prazo")

        @data_atual = Time.now
        @data_estada = @data_atual.strftime("%d/%m/2022")
        @data_carteira = @data_atual.strftime("%d/%m/2022")

        puts "Alterando prazos, (data da estada: #{@data_estada}) e (validade da carteira: #{@data_carteira})"

        wait_until_editar_prazos_btn_visible
        editar_prazos_btn.click
        wait_until_justificativa_alteracao_prazo_visible
        justificativa_alteracao_prazo.set('Justificativa alteração de prazos script de test')
        wait_until_salvar_btn_visible
        salvar_btn.click
        wait_until_carregamento_load_invisible
        wait_until_data_estada_input_visible
        data_estada_input.click.set(@data_estada)
        wait_until_data_validade_carteira_input_visible
        data_validade_carteira_input.click.set(@data_carteira)

      end

    end

    def recalcular_prazos

        recalcular_prazos_btn.click if (@tipo_solicitacao == 'Segunda via de CRNM')
        wait_until_carregamento_load_invisible

    end

    def preencher_dados_do_registro

        if(wait_until_aba_dados_registro_visible)


            alterar_prazos
            preecher_uf_e_municipio
            recalcular_prazos
            avancar_proximo_processar_atendimento

        else

            puts "Aba dados de registro não localizada"

        end

    end

    def preencher_endereco

        if(wait_until_aba_dados_endereco_visible)

            @unidade_vinculada = "DELEMIG/DREX/SR/PF/SP"

            puts "Preenchendo unidade vinculada #{@unidade_vinculada} e telefone #{@telefone_contato}"

            wait_until_unidade_vinculada_select_visible
            unidade_vinculada_select.select(@unidade_vinculada)

            sleep(1)

            avancar_proximo_processar_atendimento

        else

            puts "Aba dados de endereco não localizada"

        end

    end

    def selecionar_documentos_obrigatorios

        @indice = 0

        if(wait_until_tipo_de_ducumentos_checkbox_visible)

            @tamanho_documentos = tipo_de_ducumentos_checkbox.size
            puts "Quantidade de documentos presentes: #{@tamanho_documentos}"

            while(@indice < @tamanho_documentos) do

                sleep(0.5)
                tipo_de_ducumentos_checkbox[@indice].check
                puts "Selecionando tipo de documentacao"
                @indice += 1

            end

        end

        if(wait_until_outros_documentos_input_visible)

            @outros_documentos_texto = "Outra documentacao"
            puts "Preechendo #{@outros_documentos_texto}"

            sleep(0.5)

            wait_until_outros_documentos_input_visible
            outros_documentos_input.click.set(@outros_documentos_texto)
            wait_until_adicionar_documento_btn_visible
            adicionar_documento_btn.click
            wait_until_remover_doc_recebidos_img_visible
            
            sleep(0.5)

        end

    end

    def abortar_solicitacao_para_analise

        if(wait_until_icone_inicio_btn_visible)

            wait_until_icone_inicio_btn_visible
            icone_inicio_btn.click
            wait_until_formulario_pagina_inicial_visible

        end

    end

    def preencher_documentos

        if(wait_until_aba_dados_documento_visible)

            wait_until_confirmar_pagamento_gru_radio_visible
            confirmar_pagamento_gru_radio.click

            selecionar_documentos_obrigatorios

            sleep(1)

            puts "Anexando arquivo"
            anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
            has_arquivos_anexados?(wait:10)

            sleep(1)

            avancar_proximo_processar_atendimento

            if(has_justificativa_documentos_textarea?(wait:5))

                @justificativa_documentos = "Documentos ausentes"

                wait_until_justificativa_documentos_textarea_visible
                justificativa_documentos_textarea.set(@justificativa_documentos)
                wait_until_confirmar_justificativa_documento_visible
                confirmar_justificativa_documento.click
                wait_until_carregamento_load_invisible

            end

        else

            puts "Aba dados de documentacao não localizada"

        end

    end

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

        else

            puts "Aba dados de resultado de pesquisa não localizada"

        end

    end

    def visualizar_previa_carteira(tipo_finalizacao)

        if(wait_until_aba_previa_carteira_visible)

            @tipo_finalizacao = tipo_finalizacao

            if(@tipo_finalizacao == "Concluir")

                puts "Visualizando e Encerrando Previa da carteira"
                wait_until_concluir_btn_visible
                concluir_btn.click
                page.assert_text('Dados salvos com sucesso')
                wait_until_encerrar_btn_visible
                encerrar_btn.click

            elsif(@tipo_finalizacao == "Suspender")

                @justificativa_suspensao = "Suspendendo Solicitacao"

                wait_until_suspender_btn_visible
                suspender_btn.click
                wait_until_justificativa_suspensao_textarea_visible
                justificativa_suspensao_textarea.click.set(@justificativa_suspensao)
                wait_until_gerar_termo_suspensao_btn_visible
                gerar_termo_suspensao_btn.click
                wait_until_carregamento_load_invisible

                sleep(1)
                
                gerar_termo_suspensao_btn.click
                wait_until_carregamento_load_invisible

                switch_to_window(windows.last)

                has_div_processo_suspenso?(wait:10)
                
                sleep(1)
                
                page.execute_script "window.close();"
                switch_to_window(windows.last)
                page.execute_script "window.close();"
                switch_to_window(windows.first)

            end

        else

            puts "Aba previa da carteira não localizada"

        end

    end

    def deferir_alteracao_endereco

        wait_until_deferir_alteracao_endereco_btn_visible
        deferir_alteracao_endereco_btn.click
        wait_until_encerrar_alteracao_endereco_btn_visible
        encerrar_alteracao_endereco_btn.click

    end

    def validar_dados_divergentes

        if(has_dados_divergentes_erro?(wait:5))

            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def preencher_justificativa_alteracao

        if(has_justificativa_alteracoes_textarea?(wait:5))

            justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")

            sleep(1)

            has_confirmar_alteracoes_btn?
            confirmar_alteracoes_btn.click
            wait_until_carregamento_load_invisible
            puts "Clicando em proximo apos preencher primeira justificativa"
            proximo_btn.click
            wait_until_carregamento_load_invisible


            sleep(1)

            if(has_justificativa_alteracoes_textarea?(wait:5))

                justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")

                sleep(1)

                has_confirmar_alteracoes_btn?
                confirmar_alteracoes_btn.click
                puts "Confirmando segunda justificativa"
                wait_until_carregamento_load_invisible

                sleep(1)
    
            end

        end

    end

    def validar_msg_erro

        if(has_mensagem_erro?(wait:3))

            puts "Clicando Proximo apos exibicao de mensagem de erro"
            wait_until_proximo_btn_visible
            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def associar_imigrante

        if(has_associar_checkbox?(wait:3))

            if(  (@tipo_solicitacao == "Substituição de CRNM") || (@tipo_solicitacao == "Segunda via de CRNM") || (@tipo_solicitacao == "Alteracao_Endereco") )

                associar_checkbox(match: :first).click
                wait_until_confirmar_identidade_btn_disabled_invisible

                puts "Confirmando Identidade"
                wait_until_confirmar_identidade_btn_visible
                confirmar_identidade_btn.click
                wait_until_carregamento_load_invisible

                if(wait_until_proximo_btn_visible)

                    puts "Clicando em proximo novamente (Depois de Associar Imigrante)"

                    sleep(1)

                    wait_until_proximo_btn_visible
                    proximo_btn.click
                    wait_until_carregamento_load_invisible

                end

                if(@tipo_solicitacao != "Alteracao_Endereco")

                    validar_msg_erro

                end

            end

        end

    end

    def seleciona_novo_imigrante

        if(has_novo_imigrante_btn?(wait:3))

            puts "Selecionando novo imigrante"
            wait_until_novo_imigrante_btn_visible
            novo_imigrante_btn.click
            selecionar_rnm('Não')

            puts "Clicando Proximo"
            wait_until_proximo_btn_visible
            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def avancar_proximo_processar_atendimento

        sleep(1)

        puts "---------> Clicando em Proximo para avancar proxima aba"
        wait_until_proximo_btn_visible
        proximo_btn.click
        wait_until_carregamento_load_invisible

        if(has_aba_dados_pessoais?(wait:3))

            associar_imigrante
            validar_dados_divergentes
            preencher_justificativa_alteracao

            sleep(1)

        end

    end

    def verificar_situacao_requerimento(tipo_requerimento)

        @dados_situacao_requerimento = recuperar_dados("features/arquivos/requerimentos/#{tipo_requerimento}.txt")
        wait_until_nr_requerimento_situacao_input_visible
        nr_requerimento_situacao_input.click.set(@dados_situacao_requerimento[0])
        wait_until_btn_pesquisar_visible
        btn_pesquisar.click
        wait_until_carregamento_load_invisible

        sleep(1)

    end

end