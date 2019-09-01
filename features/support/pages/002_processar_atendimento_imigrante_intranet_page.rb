require_relative "../helpers/file_helper.rb"

class SolicitacoesIntranetPage < SitePrism::Page

    
=begin

Autor: Vinicius Fernando Costa Coutinho
Data: 31/08/2019
Versão: 1.0
Contato: vfcoutinho@stefanini.com

=end

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
    element :tipo_registro_select, "select[name*='j_id138']"
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

    elements :atendimento_btns, "input[class='btnAtendimento']"
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
    elements :arquivos_anexados_link, "td a[onclick*='idTabelaArquivos']"
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
    
    elements :alteracao_endereco_btns, "input[title='Avaliar Alteração de Endereço']"

    # MAPEAMENTO DE ELEMENTOS DE SITUACAO DO REQUERIMENTO

    element :status_requerimento_aberto_img, "td[id*='status'] img[src*='aberto']"
    element :status_requerimento_analise_img, "td[id*='status'] img[src*='analise']"
    element :status_requerimento_suspenso_img, "td[id*='status'] img[src*='suspenso']"
    element :status_requerimento_processamento_img, "td[id*='status'] img[src*='processamento']"
    element :pesquisar_btn, 'input[value="Pesquisar"]'

    # MAPEAMENTO DE ELEMENTOS GERAIS

    element :proximo_btn, "input[value*='Próximo']"
    element :icone_inicio_btn, "a[class='iconInicio']"
    element :formulario_pagina_inicial, "div[id*='formulario-home']"
    element :carregamento_load, "img[src*='spinner.gif']"
    element :nr_requerimento_situacao_input, 'input[id*="numeroRequerimento"]'

    def pesquisar_solicitacao(tipo_solicitacao, situacao_requerimento)

        @tipo_solicitacao = tipo_solicitacao
        @situacao_requerimento = situacao_requerimento
        @dados_requerimento_pesquisa = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        @periodo_inicial = "01/01/1900"
        @data_atual = Time.now
        @periodo_final = @data_atual.strftime("%d/%m/%Y")

        # MUDAR CONTROLADORES PARA NOME DO CAMPO NORMAL PARA SELECIONAR NA PESQUISA

        # VINICIUS_VERIFICAR POSSILIBIDADE DE CONTROLE MELHOR UTILIZANDO GSUB 

        # @tipo_solicitacao.gsub(/[_]/, ' ')

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

        nr_requerimento_situacao_input.click.set(@dados_requerimento_pesquisa[0].chomp)

        if(@tipo_solicitacao != "Alteracao_Endereco")

            tipo_solicitacao_select.select(@tipo_solicitacao)
            situacao_requerimento_select.select(@situacao_requerimento)

        end

        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        puts "Pesquisando Requerimento de numero:#{@dados_requerimento_pesquisa}"
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

    end

    def preencher_amparo_legal

      if not(amparo_legal_input.disabled? || amparo_legal_input.readonly?)

        @amparo_legal = "36 - ART  "

        puts "Preenchendo amparo legal #{@amparo_legal}"
        amparo_legal_input.click.set(@amparo_legal)
        wait_until_sugestao_amparo_load_visible
        amparo_legal_input.send_keys(:enter)
        aguardar_carregamento_load

     else

       puts "Amparo não habilitado"

     end

    end

    def alterar_tipo_de_solicitacao(tipo_solicitacao)

        @tipo_solicitacao = tipo_solicitacao

        puts "Alterando tipo de solicitacao para #{@tipo_solicitacao}"
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select(@tipo_solicitacao)
        confirmar_alterar_tipo_solicitacao_btn.click
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Pesquisando tipo de solicitacao para #{@tipo_solicitacao}"

        # VINICIUS_VERIFICAR POSSIBILIDADE DE FAZER UM ARRAY

        puts "Alterando tipo de solicitacao para Registro"
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Registro")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Registro"
        tipo_solicitacao_select.select("Registro")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para Autorizacao de Residencia"
        tipo_solicitacao_select.select("Registro")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Autorização de Residência")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Autorizacao de Residencia"
        tipo_solicitacao_select.select("Autorização de Residência")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para Alteracao de Prazo"
        tipo_solicitacao_select.select("Autorização de Residência")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Alteração de Prazo")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Alteracao de Prazo"
        tipo_solicitacao_select.select("Alteração de Prazo")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para Recadastramento Extemporaneo"
        tipo_solicitacao_select.select("Alteração de Prazo")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Recadastramento Extemporaneo"
        tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para Substituicao de CRNM"
        tipo_solicitacao_select.select("Recadastramento Extemporâneo")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Substituição de CRNM")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Substituicao de CRNM"
        tipo_solicitacao_select.select("Substituição de CRNM")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para Segunda via de CRNM"
        tipo_solicitacao_select.select("Substituição de CRNM")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select("Segunda via de CRNM")
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para Substituicao de CRNM"
        tipo_solicitacao_select.select("Segunda via de CRNM")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

        puts "Alterando tipo de solicitacao para #{@tipo_solicitacao}"
        tipo_solicitacao_select.select("Segunda via de CRNM")
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load
        alterar_tipo_solicitacao_btn.click
        novo_tipo_solicitacao_select.select(@tipo_solicitacao)
        confirmar_alterar_tipo_solicitacao_btn.click
        puts "Pesquisando tipo de solicitacao para #{@tipo_solicitacao}"
        tipo_solicitacao_select.select(@tipo_solicitacao)
        pesquisar_requerimento_btn.click
        aguardar_carregamento_load

    end

    def preencher_dados_pessoais_intranet

        #VINICIUS_VERIFICAR BINDING.PRY

        puts @tipo_solicitacao

        if(@tipo_solicitacao == "Alteracao_Endereco")

            puts "Clicando no primeiro registro de alteracao de endereco para preencher dados pessoais"
            alteracao_endereco_btns[0].click
            aguardar_carregamento_load

        else

            puts "Clicando no primeiro registro diferente de alteracao de endereco para preencher dados pessoais"
            atendimento_btns[0].click
            aguardar_carregamento_load

        end

        puts "Selecionando primeira aba"
        primeira_aba.click
        aguardar_carregamento_load

        if(wait_until_aba_dados_pessoais_visible)

            @tipo_registro_req = "Registro de Visto Consular"
            
            # @tipo_registro_req = "Registro após publicação no Diário Oficial da União"

            if(has_tipo_registro_select?(wait:3))

                #VINICIUS_VERIFICAR APOS PROCESSAR ATENDIMENTO O QUE OCORREU
                # ALGUNS TIPO DE REGISTROS NAO ESTAVA PREENCHIDO VINDO PELA INTERNET
                puts "Selecionando tipo de registro: #{@tipo_registro_req}"
                tipo_registro_select.select(@tipo_registro_req)

            end

            preencher_amparo_legal

            avancar_proximo_processar_atendimento

        end

    end

    def preecher_uf_e_municipio

        @uf = "Acre"
        @municipio = "Acrelândia"

        if(has_uf_select?(wait:3))

            puts "Preenchendo uf #{@uf}"
            uf_select.select(@uf)
            aguardar_carregamento_load
            puts "Preenchendo municipio #{@municipio}"
            municipio_select.select(@municipio)
            aguardar_carregamento_load

        else

            puts "UF e Município desabilitados"

        end

    end

    # VINICIUS_VERIFICAR UTILIZACAO
    def alterar_prazos

      if (@tipo_solicitacao == "Alteração de Prazo")

        @data_atual = Time.now
        # VINICIUS_VERIFICAR FORMATACAO DE DATA DE ESTADA PARA PEGAR O ANO ATUAL +3 ANOS FIXOS
        @data_estada = @data_atual.strftime("%d/%m/2022")
        @data_carteira = @data_atual.strftime("%d/%m/2022")
        @justificativa_alteracao_prazo = "Justificativa alteração de prazos script de test"

        puts "Clicando para editar prazos"
        editar_prazos_btn.click
        puts "Preenchendo justificativa de alteracao de prazos #{@justificativa_alteracao_prazo}"
        justificativa_alteracao_prazo.set(@justificativa_alteracao_prazo)
        salvar_btn.click
        aguardar_carregamento_load
        puts "Alterando prazos, (data da estada: #{@data_estada}"
        data_estada_input.click.set(@data_estada)
        puts "Alterando prazos, (data de validade da carteira: #{@data_carteira}"
        data_validade_carteira_input.click.set(@data_carteira)

      end

    end

    # VINICIUS_VERIFICAR UTILIZACAO
    def recalcular_prazos

        puts "Recalculando prazos"
        recalcular_prazos_btn.click if (@tipo_solicitacao == 'Segunda via de CRNM')
        aguardar_carregamento_load

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

            # VINICIUS_VERIFICAR POSSIBILIDADE DE MELHORARIA NO CODIGO PARA CASO QUEIRA UTILIZAR MAIS UNIDADES
            @unidade_vinculada = "DELEMIG/DREX/SR/PF/SP"

            puts "Preenchendo unidade vinculada #{@unidade_vinculada} e telefone #{@telefone_contato}"
            unidade_vinculada_select.select(@unidade_vinculada)
            sleep(1)
            avancar_proximo_processar_atendimento

        else

            puts "Aba dados de endereco não localizada"

        end

    end

    #VINICIUS_VERIFICAR POSSIBILIDADE DE CRIAR 2
    def selecionar_documentos_obrigatorios

        @indice = 0

        if(wait_until_tipo_de_ducumentos_checkbox_visible)

            @tamanho_documentos = tipo_de_ducumentos_checkbox.size
            puts "Quantidade de documentos presentes: #{@tamanho_documentos}"

            while(@indice < @tamanho_documentos) do

                sleep(0.1)
                puts "Selecionando tipo de documentacao"
                tipo_de_ducumentos_checkbox[@indice].check
                @indice += 1

            end

        end

        if(wait_until_outros_documentos_input_visible)

            @outros_documentos_texto = "Outra documentacao"
            puts "Preechendo #{@outros_documentos_texto}"
            sleep(0.1)
            outros_documentos_input.click.set(@outros_documentos_texto)
            adicionar_documento_btn.click
            wait_until_remover_doc_recebidos_img_visible
            sleep(0.1)

        end

    end

    def abortar_solicitacao_para_analise

        if(wait_until_icone_inicio_btn_visible)

            puts "Clicando no icone de inicio para abortar solicitacao para analise"
            icone_inicio_btn.click
            wait_until_formulario_pagina_inicial_visible

        end

    end

    def preencher_documentos

        if(wait_until_aba_dados_documento_visible)

            puts "Confirmando pagamento para GRU"
            confirmar_pagamento_gru_radio.click
            selecionar_documentos_obrigatorios
            sleep(0.1)
            puts "Anexando arquivo"
            anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
            has_arquivos_anexados_link?(wait:10)
            sleep(0.1)
            avancar_proximo_processar_atendimento

            if(has_justificativa_documentos_textarea?(wait:5))

                @justificativa_documentos = "Documentos ausentes"
                puts "docs ausentes"
                wait_until_justificativa_documentos_textarea_visible
                justificativa_documentos_textarea.set(@justificativa_documentos)
                wait_until_confirmar_justificativa_documento_visible
                confirmar_justificativa_documento.click
                aguardar_carregamento_load

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
                puts "Preechendo justificativa da pesquisa #{@justificativa_resultado_pesquisa} de numero #{@indice}"
                salvar_btn.click
                aguardar_carregamento_load
                @indice += 1

            end

            avancar_proximo_processar_atendimento

        else

            puts "Aba dados de resultado de pesquisa não localizada"

        end

    end

    #VINICIUS_VERIFICAR MELHORIA CONCLUIR_PREVIA_DA_CARTEIRA E SUSPENDER_PREVIA_DA_CARTEIRA
    def visualizar_previa_carteira(tipo_finalizacao)

        if(wait_until_aba_previa_carteira_visible)

            @tipo_finalizacao = tipo_finalizacao

            if(@tipo_finalizacao == "Concluir")

                puts "Visualizando e Encerrando Previa da carteira"
                concluir_btn.click
                page.assert_text('Dados salvos com sucesso')
                encerrar_btn.click

            elsif(@tipo_finalizacao == "Suspender")

                @justificativa_suspensao = "Suspendendo Solicitacao"

                puts "Clicando para suspender solicitacao"
                suspender_btn.click
                puts "Preenchendo justificativa de suspensao: #{@justificativa_suspensao}"
                justificativa_suspensao_textarea.click.set(@justificativa_suspensao)
                puts "Clicando para gerar termo de suspensao"
                # VINICIUS_VERIFICAR PORQUE ESTA 1X
                gerar_termo_suspensao_btn.click
                aguardar_carregamento_load

                # VINICIUS_VERIFICAR PORQUE ESTA 2X
                puts "Clicando para gerar termo de suspensao segunda vez"
                gerar_termo_suspensao_btn.click
                aguardar_carregamento_load
                switch_to_window(windows.last)
                has_div_processo_suspenso?(wait:10)

                sleep(0.1)
                
                # VINICIUS_VERIFICAR VERIFICAR MELHORIA DE PROCESSO DE ABAS
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

        puts "Clicando para deferir alteracao de endereco"
        deferir_alteracao_endereco_btn.click
        puts "Clicando para encerrar alteracao de endereco"
        encerrar_alteracao_endereco_btn.click

    end

    def validar_dados_divergentes

        if(has_dados_divergentes_erro?(wait:5))

            puts "Clicando em proximo apos achar dados divergentes"
            proximo_btn.click
            aguardar_carregamento_load

        else

            puts "Não existe dados divergentes (aba dados pessoais)"

        end

    end

    def preencher_justificativa_alteracao

        if(has_justificativa_alteracoes_textarea?(wait:5))

            justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")
            puts "Confirmando primeira justificativa"
            confirmar_alteracoes_btn.click
            aguardar_carregamento_load
            puts "Preenchendo Modal justificativa habilitada uma vez"
            proximo_btn.click
            aguardar_carregamento_load

            if(has_justificativa_alteracoes_textarea?(wait:5))

                justificativa_alteracoes_textarea.set("Preenchendo Modal justificativa habilitada segunda vez (VERFICAR ERRO DE PORQUE ESTA HABILIDATA 2x)")
                puts "Confirmando segunda justificativa"
                confirmar_alteracoes_btn.click
                aguardar_carregamento_load
    
            end

        end

    end

    def validar_msg_erro

        if(has_mensagem_erro?(wait:3))

            puts "Clicando em Proximo apos exibicao de mensagem de erro"
            proximo_btn.click
            aguardar_carregamento_load

        else

            puts "Não existe mensagem de erro (aba dados pessoais)"

        end

    end

    def associar_imigrante

        if(has_associar_checkbox?(wait:3))

            puts "Tipo de solicitação: #{@tipo_solicitacao}"

            #VINICIUS_VERIFICAR BINDING.PRY PARA VER SE ESTA ENTRANDO NOS TIPOS DE SOLICITACOES CITADOS

            # VINICIUS_VERIFICAR PORQUE NAO ESTA FORMATADO COM _ NAS SOLICITACOES
            if(  (@tipo_solicitacao == "Substituição de CRNM") || (@tipo_solicitacao == "Segunda via de CRNM") || (@tipo_solicitacao == "Alteracao_Endereco") )

                associar_checkbox(match: :first).click
                puts "Confirmando Identidade de Imigrante"
                confirmar_identidade_btn.click

                if(wait_until_proximo_btn_visible)

                    puts "Clicando em proximo novamente (Depois de Associar Imigrante)"
                    proximo_btn.click
                    aguardar_carregamento_load

                end

                if(@tipo_solicitacao != "Alteracao_Endereco")

                    validar_msg_erro

                end

            end

        end

    end

    # VINICIUS_VERIFICAR POSSIBILIDADE DE UTILIZACAO
    def seleciona_novo_imigrante

        if(has_novo_imigrante_btn?(wait:3))

            puts "Selecionando novo imigrante"
            novo_imigrante_btn.click
            selecionar_rnm('Não')
            puts "Clicando Proximo"
            proximo_btn.click
            aguardar_carregamento_load

        end

    end

    def avancar_proximo_processar_atendimento

        puts "---------> Clicando em Proximo para avancar proxima aba"
        proximo_btn.click
        aguardar_carregamento_load

        if(has_aba_dados_pessoais?(wait:3))

            associar_imigrante
            validar_dados_divergentes
            preencher_justificativa_alteracao
        
        else

            puts "Verificacao de Associacao, dados divergentes e preenchimento de justificativa e feita apenas na aba dados pessoais"

        end

    end

    def verificar_situacao_requerimento(tipo_requerimento)

        @dados_situacao_requerimento = recuperar_dados("features/arquivos/requerimentos/#{tipo_requerimento}.txt")
        puts "Verificando situacao do requerimento de numero: #{@dados_situacao_requerimento}"
        nr_requerimento_situacao_input.click.set(@dados_situacao_requerimento[0])
        pesquisar_btn.click
        aguardar_carregamento_load

    end

    def aguardar_carregamento_load 

        wait_until_carregamento_load_invisible

    end

end