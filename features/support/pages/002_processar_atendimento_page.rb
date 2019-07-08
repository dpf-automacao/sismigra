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

    # Mapeamento de varios elementos

    elements :numeros_requerimentos, "td[id*='numeroRequerimento']"
    elements :btns_atendimento, "input[class='btnAtendimento']"
    elements :mensagem_erro, "div.cRed"
    elements :arquivos_anexados, "td a[onclick*='idTabelaArquivos']"
    elements :alterar_dados_dos_registros, "input[title='Alterar dados do registro da pesquisa.']"

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

        periodo_inicial_input.set("01/01/2000")
        periodo_final_input.set("03/07/2019")
        tipo_solicitacao_select.select(@tipo_solicitacao)
        situacao_requerimento_select.select(@situacao_requerimento)

        pesquisar_requerimento_btn.click

        wait_until_carregamento_load_invisible
        has_numeros_requerimentos?

        @nr_requerimento = numeros_requerimentos[1].text
        gravar_dados("features/arquivos/requerimentos.txt", @nr_requerimento)
        btns_atendimento[1].click
        wait_until_carregamento_load_invisible

    end

    # Definindo metodo para preencher Dados Pessoais

    def preencher_amparo_legal
      if(has_amparo_legal_disabled_input?(wait:1))
        # SE ESTIVER DESABILITADO
      elsif(amparo_legal_input.value == "")
        amparo_legal_input.set("36 - ART")
        sleep(1)
        amparo_legal_input.send_keys(:enter)
      end
    end

    def preencher_dados_pessoais

        # SE ESTIVER NA ABA DADOS PESSOAIS
        preencher_amparo_legal

        if(has_aba_dados_pessoais?(wait:5))

            if(has_dependente_chamante?(wait:1))

                dependente_chamante.click

            end

            avancar_proximo_processar_atendimento

        end

    end

    # Definindo metodo para preencher Dados do Registro

    def preencher_dados_do_registro

        # SE ESTIVER NA ABA DADOS DO REGISTRO

        if(has_aba_dados_registro?(wait:5))

            if(has_uf_select?(wait:1))

                uf_select.select("Acre")
                municipio_select.select("Acrelândia")

            end

            avancar_proximo_processar_atendimento

        end

    end

    # Definindo metodo para preencher Dados do Endereço

    def preencher_endereco

        # SE ESTIVER NA ABA DADOS DO ENDERECO

        if(has_aba_dados_endereco?(wait:5))

            if(has_unidade_vinculada_select?)

                unidade_vinculada_select.select("DELEMIG/DREX/SR/PF/SP")

            end

            if(@tipo_solicitacao == "Autorização de Residência" && @situacao_requerimento == "Aberto")

                if(has_telefone_contato_input?(wait:1))

                    telefone_contato_input.click.set("61999999999")

                end

            else

                if(has_telefone_contato_input?(wait:1))

                    telefone_contato_input.click.set("61999999999")

                end

            end

            avancar_proximo_processar_atendimento

        end

    end

    # Definindo metodo para preencher Dados de Documentação

    def preencher_documentos

        # SE ESTIVER NA ABA DOCUMENTOS

        if(has_aba_dados_documento?(wait:5))

            choose("Sim")

            # TODO:
            # within (docs_obrigatorios) do
            #   all('input[type="checkbox"]').each { |item| item.click}
            # end

            if(has_fotos?(wait:1))

                fotos.check
                adicionar_documento_btn.click

            end

            if(has_documento_de_viagem_checkbox?(wait:1))

                documento_de_viagem_checkbox.check
                adicionar_documento_btn.click

            end

            if(has_comprovante_filiacao?(wait:1))

                comprovante_filiacao.check
                adicionar_documento_btn.click

            end

            if(has_declaracao_endereco?(wait:1))

                declaracao_endereco.check
                adicionar_documento_btn.click

            end

            if(has_certidao_nada_consta?(wait:1))

                certidao_nada_consta.check
                adicionar_documento_btn.click

            end

            if(has_comprovante_domicilio?(wait:1))

                comprovante_domicilio.check
                adicionar_documento_btn.click

            end

            anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
            has_arquivos_anexados?

            avancar_proximo_processar_atendimento

            if(has_justificativa_documentos_textarea?(wait:1))


                justificativa_documentos_textarea.click.set("Justificando ausencia de documentacao")
                has_confirmar_documentacao_btn?
                confirmar_documentacao_btn.click

            end

        end

    end

    # Definindo metodo para preencher Resultados da Pesquisa

    def preencher_resultado_da_pesquisa

        # SE ESTIVER NA RESULTADO DA PESQUISA

        if(has_aba_resultado_pesquisa?(wait:5))

            @indice = 0
            @tamanho_alterar_dados = alterar_dados_dos_registros.size

            while(@indice < @tamanho_alterar_dados)

                alterar_dados_dos_registros[@indice].click
                resultado_da_pesquisa_textarea.set("NADA CONSTA")
                salvar_btn.click
                wait_until_carregamento_load_invisible
                @indice += 1

            end

            avancar_proximo_processar_atendimento

        end

    end

    # Definindo metodo para Visualizar Previa da Carteira

    def visualizar_previa_carteira

        # SE ESTIVER NA RESULTADO DE PREVIA DA CARTEIRA

        if(has_aba_previa_carteira?(wait:5))

            has_concluir_btn?
            concluir_btn.click
            has_encerrar_btn?
            page.assert_text('Dados salvos com sucesso')
            encerrar_btn.click

        end

    end

    # Definindo metodo para avancar para proxima pagina

    def avancar_proximo_processar_atendimento


        proximo_btn.click
        wait_until_carregamento_load_invisible

        if(has_novo_imigrante_btn?(wait:1))

            novo_imigrante_btn.click
            preencher_amparo_legal
            nao_possui_RNM.click
            proximo_btn.click

        elsif(has_associar_checkbox?(wait:1))

            associar_checkbox.click
            wait_until_confirmar_identidade_btn_disabled_invisible

            has_confirmar_identidade_btn?
            confirmar_identidade_btn.click
            wait_until_carregamento_load_invisible

            sleep(1)

            if(has_proximo_btn?(wait:1))

                proximo_btn.click
                wait_until_carregamento_load_invisible

            end

        end

        if(has_mensagem_erro?(wait:3))

            if(has_justificativa_alteracoes_textarea?(wait:1))

                justificativa_alteracoes_textarea.set("Preenchendo justificativa de alteracao de dados do imigrante")
                confirmar_alteracoes_btn.click
                wait_until_carregamento_load_invisible

            end

            if(has_dados_divergentes_erro?(wait:1))


                proximo_btn.click
                wait_until_carregamento_load_invisible

            else


                proximo_btn.click
                wait_until_carregamento_load_invisible

            end

        end

        if(has_dados_divergentes_erro?(wait:1))


            proximo_btn.click
            wait_until_carregamento_load_invisible

        end

        sleep(1)

    end

end