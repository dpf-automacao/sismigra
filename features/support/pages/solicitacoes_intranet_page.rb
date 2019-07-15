require_relative "../helpers/file_helper.rb"

class SolicitacoesIntranetPage < SitePrism::Page

    include FileHelper

    # Mapeamento de elementos de preenchimento

    element :periodo_inicial_input, "input[id*='periodoInicioInputDate']"
    element :periodo_final_input, "input[id*='periodoFinalInputDate']"
    element :amparo_legal_input, "input[id*='inputText_comboAmparo']"
    element :amparo_legal_disabled_input, "input[id*='inputText_comboAmparo'][disabled='disabled']"
    element :telefone_contato_input, "input[id*='telefoneResidencial']"
    element :resultado_da_pesquisa_textarea, "fieldset[class='mTop10px'] textarea[id*='resultadoPesquisa']"
    element :justificativa_alteracoes_textarea, "table[id='modalJustificativaAlteracaoDadosPessoaisContentTable'] textarea"
    element :justificativa_documentos_textarea, "table[id='modalJustificativaDocumentoContentTable'] textarea"
    element :cidade_nascimento, "input[id*='txtCidadeNascimento']"

    # Mapeamento de botoes, links

    element :tipo_solicitacao_select, "select[id*='formulario-pesquisar:tipo']"
    element :situacao_requerimento_select, "select[id*='formulario-pesquisar:situacao']"
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"
    element :tipo_registro, :xpath, '//label[contains(text(),"Tipo De Registro:")]/../../select'
    element :possui_RNM, "input[id*='idPossuiRnm'][value='SIM']"
    element :nao_possui_RNM, "input[id*='idPossuiRnm'][value='NAO']"
    element :rnm_2via_input, "input[id*='txtRne-segundaVia']"
    element :rnm_2via_responsavel_input, 'input[id*="rneDoResponsavel-segundaVia"]'
    element :dependente_chamante, "input[id*='idDependente'][value='NAO']"
    element :sexo_filiacao1_masculino, 'input[id*="NomeSexoMae"][value="MASCULINO"]'
    element :sexo_filiacao1_feminino, 'input[id*="NomeSexoMae"][value="FEMININO"]'
    element :sexo_filiacao1_nao_declarado, 'input[id*="NomeSexoMae"][value="NAO_DECLARADO"]'
    element :sexo_filiacao2_masculino, 'input[id*="NomeSexoPai"][value="MASCULINO"]'
    element :sexo_filiacao2_feminino, 'input[id*="NomeSexoPai"][value="FEMININO"]'
    element :sexo_filiacao2_nao_declarado, 'input[id*="NomeSexoPai"][value="NAO_DECLARADO"]'
    element :titular_rnm_radio, 'input[value="TITULAR"]'
    element :editar_prazos_btn, 'input[value="Editar Prazo(s)"]'
    element :justificativa_alteracao_prazo, 'textarea[id*="formModalJustificativaCancelamentoCalculoPrazo"]'
    element :data_estada_input, 'input[id*="dataEstadaRegistroInputDate"]'
    element :data_validade_carteira_input, 'input[id*="dataValidadeCarteiraInputDate"]'
    element :recalcular_prazos_btn, "input[value='Recalcular Prazos']"
    element :uf_select, "select[id*='uf']"
    element :municipio_select, "select[id*='Municipios']"
    element :associar_checkbox, "input[name*='dataTableEstrangeiros']"
    element :confirmar_identidade_btn, "input[value*='Confirmar Identidade']"
    element :confirmar_identidade_btn_disabled, "input[value*='Confirmar Identidade'][disabled='disabled']"
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
    element :proximo_btn, "input[value*='Próximo']"
    element :pais_nacionalidade, "select[id*='paisDeNacionalidade']"
    element :pais_nascimento, "select[id*='paisDeNascimento']"
    element :icone_inicio_btn, "a[class='iconInicio']"

    # Mapeamento das abas de Processar Atendimento

    element :aba_dados_pessoais, "td[id*='DadosPessoais_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_registro, "td[id*='DadosRegistro_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_endereco, "td[id*='Endereco_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_dados_documento, "td[id*='Documentos_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_resultado_pesquisa, "td[id*='Pesquisa_lbl'][class*='dr-tbpnl-tb-act']"
    element :aba_previa_carteira, "td[id*='PreviaCarteira_lbl'][class*='dr-tbpnl-tb-act']"

    element :primeira_aba, 'td[id*="DadosPessoais_lbl"]'

    # Mapeamento Decisão
    element :anexar_formularios_btn, 'a[class="btnAnexar"]'
    element :anexar_formularios_modal, 'div[id*="modalDocumentosRequerimentoHeader"]'
    element :upload_anexo_formularios_btn, 'input[id*="upload:file"]'
    element :selecionado_check, 'input[id*="dSelecionado"]'
    element :deferir_btn, 'input[value="Deferir"]'
    element :confirmar_deferimento_modal, :xpath, '//div[text()="Confirmar Deferimento de Processo"]'
    element :deferir_sim_btn, 'input[value="Sim"]'

    def anexar_formularios_decisao
        anexar_formularios_btn.click
        wait_until_anexar_formularios_modal_visible

        binding.pry
        anexar(upload_anexo_formularios_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
        binding.pry
        salvar_btn.click
    end
    # Mapeamento de elementos para validação e load

    element :formulario_pagina_inicial, "div[id*='formulario-home']"
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

    # Mapeamento da Situacao do Requerimento

    element :nr_requerimento_situacao_input, 'input[id*="numeroRequerimento"]'
    element :status_requerimento_aberto, "td[id*='status'] img[src*='aberto']"
    element :status_requerimento_analise, "td[id*='status'] img[src*='analise']"
    element :status_requerimento_suspenso, "td[id*='status'] img[src*='suspenso']"
    element :status_requerimento_processamento, "td[id*='status'] img[src*='processamento']"

    element :btn_pesquisar, 'input[value="Pesquisar"]'

    # Definindo metodo para pesquisar requerimento

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

        else

            @tipo_solicitacao = tipo_solicitacao

        end

        sleep(1)
        nr_requerimento_situacao_input.click.set(@dados_requerimento_pesquisa[0].chomp)
        tipo_solicitacao_select.select(@tipo_solicitacao)
        situacao_requerimento_select.select(@situacao_requerimento)
        sleep(1)
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)

        puts "Pesquisando numero do requerimento"

        pesquisar_requerimento_btn.click
        wait_until_carregamento_load_invisible
        sleep(1)

    end

    def preencher_amparo_legal

      if not(amparo_legal_input.disabled? || amparo_legal_input.readonly?)

        @amparo_legal = "36 - ART  "

        puts "Preenchendo amparo legal #{@amparo_legal}"

        amparo_legal_input.click.set(@amparo_legal)
        wait_until_sugestao_amparo_load_visible
        amparo_legal_input.send_keys(:enter)
        wait_until_carregamento_load_invisible

     else

       puts "Amparo não habilitado"

     end

    end


    def preencher_dados_pessoais

        btns_atendimento[0].click
        wait_until_carregamento_load_invisible

        # Vai para a primeira aba
        primeira_aba.click
        wait_until_carregamento_load_invisible

        if(wait_until_aba_dados_pessoais_visible)

            preencher_amparo_legal
            avancar_proximo_processar_atendimento

        end

    end


    def preecher_uf_e_municipio

        @uf = "Acre"
        @municipio = "Acrelândia"

        if(has_uf_select?(wait:10))

            puts "Preenchendo uf #{@uf} e municipio #{@municipio}"

            uf_select.select(@uf)
            wait_until_carregamento_load_invisible

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

        editar_prazos_btn.click
        justificativa_alteracao_prazo.set('Justificativa alteração de prazos script de test')
        salvar_btn.click
        wait_until_carregamento_load_invisible
        data_estada_input.click.set(@data_estada)
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

        end

    end

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
            sleep(0.5)
            outros_documentos_input.click.set(@outros_documentos_texto)
            adicionar_documento_btn.click
            wait_until_remover_doc_recebidos_img_visible

        end

    end

    def abortar_solicitacao_para_analise

        if(has_icone_inicio_btn?)

            icone_inicio_btn.click
            has_formulario_pagina_inicial?

        end

    end

    def preencher_documentos

        if(wait_until_aba_dados_documento_visible)

            confirmar_pagamento_gru_radio.click

            selecionar_documentos_obrigatorios

            anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
            sleep(1)
            has_arquivos_anexados?

            avancar_proximo_processar_atendimento

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

        end

    end

    def visualizar_previa_carteira(tipo_finalizacao)

        if(wait_until_aba_previa_carteira_visible)

            @tipo_finalizacao = tipo_finalizacao

            if(@tipo_finalizacao == "Concluir")

                puts "Visualizando e Encerrando Previa da carteira"
                wait_until_concluir_btn_visible
                concluir_btn.click
                wait_until_encerrar_btn_visible
                page.assert_text('Dados salvos com sucesso')
                encerrar_btn.click

                binding.pry

            elsif(@tipo_finalizacao == "Suspenso")

                puts "Visualizando Previa da Carteira e Supendendendo a Solicitacao"

            end

        end

    end

    def validar_dados_divergentes

        if(has_dados_divergentes_erro?(wait:3))

            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def preencher_justificativa_alteracao

        if(has_justificativa_alteracoes_textarea?(wait:3))

            justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")
            sleep(1)
            has_confirmar_alteracoes_btn?
            confirmar_alteracoes_btn.click
            wait_until_carregamento_load_invisible
            sleep(1)
            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

        if(has_justificativa_alteracoes_textarea?(wait:3))

            justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")
            sleep(1)
            has_confirmar_alteracoes_btn?
            confirmar_alteracoes_btn.click
            wait_until_carregamento_load_invisible
            sleep(1)
            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def validar_msg_erro

        if(has_mensagem_erro?(wait:3))

            puts "Clicando Proximo"
            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

    end

    def associar_imigrante

        if(has_associar_checkbox?(wait:3))

            if(  (@tipo_solicitacao == "Substituição de CRNM") || (@tipo_solicitacao == "Segunda via de CRNM") )

                associar_checkbox(match: :first).click
                wait_until_confirmar_identidade_btn_disabled_invisible

                puts "Confirmando Identidade"
                wait_until_confirmar_identidade_btn_visible
                confirmar_identidade_btn.click
                wait_until_carregamento_load_invisible

                # selecionar_rnm('Sim')


                if(wait_until_proximo_btn_visible)

                    puts "Clicando em proximo novamente"
                    sleep(1)
                    proximo_btn.click
                    wait_until_carregamento_load_invisible

                end

                # preencher_sexo_filiacao # Após confirmar a identidade alguns dados se perdem

                validar_msg_erro
                validar_dados_divergentes
                preencher_justificativa_alteracao

                # preencher_rnm_responsavel

            end

        end

    end

    def seleciona_novo_imigrante

        if(has_novo_imigrante_btn?(wait:3))

            if(wait_until_novo_imigrante_btn_visible)

                puts "Selecionando novo imigrante"
                novo_imigrante_btn.click
                selecionar_rnm('Não')

                puts "Clicando Proximo"
                proximo_btn.click
                wait_until_carregamento_load_invisible

            end

        end

    end

    def avancar_proximo_processar_atendimento

        sleep(1)

        puts "Clicando Proximo"
        proximo_btn.click
        wait_until_carregamento_load_invisible
        associar_imigrante

        # validar_dados_divergentes
        # preencher_justificativa_alteracao
        # seleciona_novo_imigrante

        sleep(1)

    end

    def verificar_situacao_requerimento(tipo_requerimento)

        # element :status_requerimento_aberto, "td[id*='status'] img[src*='aberto']"

        @dados_situacao_requerimento = recuperar_dados("features/arquivos/requerimentos/#{tipo_requerimento}.txt")
        nr_requerimento_situacao_input.click.set(@dados_situacao_requerimento[0])
        btn_pesquisar.click
        wait_until_carregamento_load_invisible
        sleep(1)


    end

end