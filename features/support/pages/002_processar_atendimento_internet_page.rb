require_relative "../helpers/file_helper.rb"

class SolicitacoesInternetPage < SitePrism::Page

include FileHelper

    # MAPEAMENTO DADOS PESSOAIS

    element :tipo_de_registro_select, "select[id='idTipoReg']"
    element :tipo_de_substituicao_select, "select[id='idTipoCarteira']"
    element :nome_imigrante_input, "input[id='txtNomeCompleto']"
    element :sobrenome_imigrante_input, "input[id*='txtSobrenome']"
    element :nome_anterior_completo_input, "input[id*='Anterior']"
    element :incluir_nome_social_checkbox, "div[id*='idNomeSocial'] input[type='checkbox']"
    element :nome_social_input, "input[id*='txtNomeSocial']"
    element :sexo_masculino_imigrante_radio, "table[id='idRadioSexo'] input[value='MASCULINO']"
    element :sexo_feminino_imigrante_radio, "table[id='idRadioSexo'] input[value='FEMININO']"
    element :sexo_nao_declarado_imigrante_radio, "table[id='idRadioSexo'] input[value='NAO_DECLARADO']"
    element :deficiencia_fisica_sim_radio, "table[id='idRadioDeficiente'] input[value='SIM']"
    element :deficiencia_fisica_nao_radio, "table[id='idRadioDeficiente'] input[value='NAO']"
    element :data_nascimento_input, "input[id='calDtNascInputDate']"
    element :estado_civil_select, "select[id='cmbTipoEstadoCivil']"
    element :cidade_nascimento_input, "input[id='txtCidadeNascimento']"
    element :pais_nascimento_select, "select[id='cmbPaisNascimento']"
    element :pais_nacionalidade_select, "select[id='paisNacionalidade']"
    element :email_imigrante_input, "input[id='txtEmail']"
    element :ocupacao_principal_textarea, "textarea[id='idDescricaoOcupacao']"
    element :cpf_imigrante_input, "input[id='cpf']"
    element :filiacao_1_input, "input[id='txtNomeDaMae']"
    element :sexo_masculino_filiacao_1_radio, "table[id='txtSexoDaMae'] input[value='MASCULINO']"
    element :sexo_feminino_filiacao_1_radio, "table[id='txtSexoDaMae'] input[value='FEMININO']"
    element :sexo_nao_declarado_filiacao_1_radio, "table[id='txtSexoDaMae'] input[value='NAO_DECLARADO']"
    element :filiacao_2_input, "input[id='txtNomePai']"
    element :sexo_masculino_filiacao_2_radio, "table[id='txtSexoDoPai'] input[value='MASCULINO']"
    element :sexo_feminino_filiacao_2_radio, "table[id='txtSexoDoPai'] input[value='FEMININO']"
    element :sexo_nao_declarado_filiacao_2_radio, "table[id='txtSexoDoPai'] input[value='NAO_DECLARADO']"
    element :rnm_dependente_radio, "input[value='DEPENDENTE']"
    element :rnm_responsavel_input, "input[id='rne-do-responsavel']"
    element :rnm_titular_radio, "input[value='TITULAR']"
    element :rnm_titular_input, "input[id='txt-rne']"
    element :sugestao_load, "td[class*='suggestionSelectValue']"

    # MAPEAMENTO DADOS REGISTRO

    element :possui_visto_sim_radio, "input[name='possuiVisto'][value='true']"
    element :numero_visto_input, "input[id='txtNumeroVisto']"
    element :data_da_concessao_input, "input[id='dataConcessaoInputDate']"
    element :cidade_da_concessao_input, "input[id='txtCidadeVisto']"
    element :pais_concedido_select, "select[id='idPaisVisto']"
    element :tipo_documento_viagem_select, "select[id='idTipoDocumentoIdentificacao']"
    element :numero_doc_viagem_input, "input[id='txtNrDocumento']"
    element :pais_expedidor_doc_select, "select[id='paisExpedidor']"
    element :sigla_uf_entrada_select, "select[id='idSiglaUF']"
    element :local_entrada_select, "select[id='comboLocalEntrada']"
    element :meio_transporte_select, "select[id='meioTransporte']"
    element :data_entrada_input, "input[id='dataEntradaInputDate']"
    element :data_publicacao_input, "input[id='idDataPublicacaoInputDate']"
    element :pagina_publicacao_input, "input[id='paginaDou']"
    element :orgao_concedente_select, "select[id='unidadeConcedente']"

    # MAPEAMENTO DADOS ENDERECO

        # RESIDENCIAL

    element :cep_residencial_input, "input[id='cep1']"
    element :logradouro_residencial_input, "input[id='txtLogradouro']"
    element :complemento_residencial_input, "input[id='txtComplemento']"
    element :distrito_bairro_residencial_input, "input[id='txtDistritoBairro']"
    element :cidade_residencial_select, "select[id='comboCidadeEndResidencial']"
    element :uf_residencial_select, "select[id='txtUf']"
    element :telefone_residencial_input, "input[id='telefone']"
    element :telefone2_residencial_input, "input[id='celular']"

        # COMERCIAL

    element :nao_possui_endereco_comercial_check, "input[id='naoPossuiEnderecoComercial']"
    element :nome_estabelecimento_comercial_input, "input[id='txtNomeComercial']"
    element :cep_comercial_input, "input[id='cep3']"
    element :logradouro_comercial_input, "input[id='txtLogradouro2']"
    element :complemento_comercial_input, "input[id='areaTxtComplementoComercial']"
    element :distrito_bairro_comercial_input, "input[id='txtBairro']"
    element :cidade_comercial_select, "select[id='comboCidadeEndResidencial2']"
    element :uf_comercial_select, "select[id='naoPossuiEC']"
    element :telefone_comercial_input, "input[id='telefone-comercial']"

        # EXTERIOR

    element :cep_exterior_input, "input[id='cepExterior']"
    element :logradouro_exterior_input, "input[id='idEnderecoExterior']"
    element :complemento_exterior_input, "input[id='idComplemento']"
    element :estado_exterior_input, "input[id='idEstado']"
    element :cidade_exterior_input, "input[id='idCidade']"
    element :pais_exterior_input, "select[id='idPaisDTO']"

        # CONTATO

    element :nome_contato_input, "input[id='idContatoNome']"
    element :telefone_contato_input, "input[id='telefone-contato']"
    element :vinculo_contato_input, "input[id='idVinculoContato']"
    element :pais_contato_select, "select[id='idContatoPais']"

    # MAPEAMENTO DADOS DECLARACAO

    element :declaracao_checkbox, "input[id*='declaracao']"
    element :impressao_da_solicitacao_form, "form[id='form-imprime']"
    element :numero_requerimento_span, "span[class='titulo20pc']"

    # MAPEAMENTO ESPECIFICO PARA ALTERACAO DE ENDERECO ABA DADOS PESSOAIS

    element :rnm_alteracao_endereco_input, "input[id='form-alteracao-endereco:rne']"
    element :nome_completo_alteracao_endereco_input, "input[id*='nomeCompleto']"
    element :sexo_masculino_imigrante_alteracao_endereco_radio, "table[id*='sexo'] input[value='MASCULINO']"
    element :sexo_feminino_imigrante_alteracao_endereco_radio, "table[id*='sexo'] input[value='FEMININO']"
    element :sexo_nao_declarado_imigrante_alteracao_endereco_radio, "table[id*='sexo'] input[value='NAO_DECLARADO']"
    element :estado_civil_alteracao_endereco_select, "select[id*='estadoCivil']"
    element :filiacao_1_alteracao_endereco_input, "input[id*='txtNomeMaeDados']"
    element :sexo_masculino_filiacao_1_alteracao_endereco_radio, "input[id*='txtNomeSexoMae'][value='MASCULINO']"
    element :sexo_feminino_filiacao_1_alteracao_endereco_radio, "input[id*='txtNomeSexoMae'][value='FEMININO']"
    element :sexo_nao_declarado_filiacao_1_alteracao_endereco_radio, "input[id*='txtNomeSexoMae'][value='NAO_DECLARADO']"
    element :filiacao_2_alteracao_endereco_input, "input[id*='txtNomePaiDadosPessoais']"
    element :sexo_masculino_filiacao_2_alteracao_endereco_radio, "input[id*='txtNomeSexoPai'][value='MASCULINO']"
    element :sexo_feminino_filiacao_2_alteracao_endereco_radio, "input[id*='txtNomeSexoPai'][value='FEMININO']"
    element :sexo_nao_declarado_filiacao_2_alteracao_endereco_radio, "input[id*='txtNomeSexoPai'][value='NAO_DECLARADO']"
    element :data_nascimento_alteracao_endereco_input, "input[id*='DtNascInputDate']"
    element :pais_nascimento_alteracao_endereco_select, "select[id*='paisDeNascimento']"
    element :cpf_alteracao_endereco_input, "input[id*='cpf']"
    element :ocupacao_principal_alteracao_endereco_input, "textarea[id*='DescricaoOcupacao']"
    element :cidade_nascimento_alteracao_endereco_input, "input[id*='cidadeDeNascimento']"
    element :pais_nacionalidade_alteracao_endereco_select, "select[id*='paisDeNacionalidade']"
    element :email_alteracao_endereco_input, "input[id*='email']"

    # MAPEAMENTO ESPECIFICO PARA ALTERACAO DE ENDERECO ABA NOVO ENDERECO

        # ENDERECO RESIDENCIAL

    element :alteracao_endereco_residencial_checkbox, "input[id*='enderecoResidencial']"
    element :cep_alteracao_endereco_residencial_input, "input[id*='cepResidencial']"
    element :complemento_alteracao_endereco_residencial_input, "input[id*='complemento']"
    element :telefone_residencial_alteracao_endereco_residencial_input, "input[id*='telefoneResidencial']"
    element :telefone_celular_alteracao_endereco_residencial_input, "input[id*='celular']"
    element :anexar_arquivo_alteracao_endereco_residencial_div, "div[id*='idUploadComprovanteResidencial:add1']"
    element :anexar_arquivo_alteracao_endereco_residencial_input, "input[id*='idUploadComprovanteResidencial:file']"
    element :arquivo_anexado_alteracao_endereco_residencial_link, "a[id*='linkVisualizarComprovanteResidencial']"

        # ENDERECO COMERCIAL

    element :alteracao_endereco_comercial_checkbox, "input[id*='novo-end-comercial']"
    element :cep_alteracao_endereco_comercial_input, "input[id*='cepComercial']"
    element :complemento_alteracao_endereco_comercial_input, "input[id*='complementoComercial']"
    element :cidade_alteracao_endereco_comercial_select, "select[id*='comboCidadeEndComercial']"
    element :estado_alteracao_endereco_comercial_select, "select[id*='ufComercial']"
    element :telefone_alteracao_endereco_comercial_input, "input[id*='telefoneComercial']"
    element :anexar_arquivo_alteracao_endereco_comercial_div, "div[id*='idUploadComprovanteComercial:add1']"
    element :anexar_arquivo_alteracao_endereco_comercial_input, "input[id*='idUploadComprovanteComercial:file']"
    element :arquivo_anexado_alteracao_endereco_comercial_link, "a[id*='linkVisualizarComprovanteComercial']"
    
        # ENDERECO EXTERIOR

    element :alteracao_endereco_exterior_checkbox, "input[id*='novo-end-exterior']"
    element :cep_alteracao_endereco_exterior_input, "input[id*='cepExterior']"
    element :complemento_alteracao_endereco_exterior_input, "input[id*='idComplemento']"
    element :cidade_alteracao_endereco_exterior_input, "input[id*='idCidade']"
    element :logradouro_alteracao_endereco_exterior_input, "input[id*='idEnderecoExterior']"
    element :estado_alteracao_endereco_exterior_input, "input[id*='idEstado']"
    element :pais_alteracao_endereco_exterior_input, "select[id*='idPaisDTO']"
    element :anexar_arquivo_alteracao_endereco_exterior_div, "div[id*='idUploadComprovanteExterior:add1']"
    element :anexar_arquivo_alteracao_endereco_exterior_input, "input[id*='idUploadComprovanteExterior:file']"
    element :arquivo_anexado_alteracao_endereco_exterior_link, "a[id*='linkVisualizarComprovanteExterior']"

    # MAPEAMENTO VERIFICACAO DE PROTOCOLO

    element :numero_protocolo_requerimento_input, "input[id*='form-validar-protocolo:txt-protocolo']"
    element :cod_controle_input, "input[id*='form-validar-protocolo:txt-codigo-controle']"
    element :verificar_protocolo_btn, "input[value='Verificar']"
    element :validar_protocolo_table, "table[id='modal-validar-protocoloContentTable']"

    # MAPEAMENTO ANDAMENTO REQUERIMENTO

    element :numero_andamento_requerimento_input, "input[id*='numeroRequerimento']"
    element :pesquisar_btn, "input[value='Pesquisar']"
    element :status_requerimento_aberto, "td[id*='status'] img[src*='aberto']"
    element :status_requerimento_analise, "td[id*='status'] img[src*='analise']"
    element :status_requerimento_suspenso, "td[id*='status'] img[src*='suspenso']"
    element :status_requerimento_processamento, "td[id*='status'] img[src*='processamento']"

    # MAPEAMENTO AVANCAR

    element :avancar_proximo_btn, "input[value*='Próximo']"

    # MAPEAMENTO LOAD

    element :carregamento_load, "img[src*='spinner.gif']"
    element :texto_imagem_input, "input[id*='verifyCaptcha']"
    element :imagem_captcha, "img[id='j_id657:capimg']"

    def preencher_dados_pessoais_internet(tipo_requerimento)

        @tipo_requerimento = tipo_requerimento

        if(@tipo_requerimento != "Alteracao_Endereco")

            @tipo_registro = "Registro de Visto Consular"
            @tipo_substituicao = "Alteração de Dados"
            @nome_imigrante = Faker::Name.male_first_name
            @sobrenome_imigrante = Faker::Name.last_name
            @nome_anterior_completo = Faker::Name.name_with_middle
            @nome_social = Faker::Name.name_with_middle
            @email_imigrante = Faker::Internet.email
            @cpf_imigrante = Faker::CPF.numeric
            @nome_filiacao_1 = Faker::Name.name_with_middle
            @nome_filiacao_2 = Faker::Name.name_with_middle
            @data_nascimento = "01011970"
            @estado_civil = "SOLTEIRO"
            @cidade_nascimento = "BOGOTA"
            @pais_nascimento = "COLOMBIA"
            @pais_nacionalidade = "COLOMBIA"
            @ocupacao_principal = "19 - "
            @rnm_titular = "V9707268"
            
            sleep(1)

            if(@tipo_requerimento == "Registro")

                puts "Selecionando Tipo de Registro do imigrante: #{@tipo_registro}"
                tipo_de_registro_select.select(@tipo_registro)

            end

            if(@tipo_requerimento == "Substituicao_de_CRNM")

                puts "Selecionando Tipo de Substituicao: #{@tipo_substituicao}"
                tipo_de_substituicao_select.select(@tipo_substituicao)

            end
            
            puts "Preenchendo Nome do imigrante: #{@nome_imigrante}"
            nome_imigrante_input.set(@nome_imigrante)

            puts "Preenchendo Sobrenome do imigrante: #{@sobrenome_imigrante}"
            sobrenome_imigrante_input.set(@sobrenome_imigrante)

            puts "Preenchendo Nome Anterior do imigrante: #{@nome_anterior_completo}"
            nome_anterior_completo_input.set(@nome_anterior_completo)

            puts "Selecionando Inclusao de Nome Social"
            incluir_nome_social_checkbox.check

            puts "Preenchendo Nome Social do imigrante: #{@nome_social}"
            nome_social_input.set(@nome_social)

            puts "Selecionando Sexo Masculino do Imigrante"
            sexo_masculino_imigrante_radio.click

            puts "Selecionando Deficiencia fisica: NAO"
            deficiencia_fisica_nao_radio.click

            puts "Preenchendo Data de Nascimento do Imigrante: #{@data_nascimento}"
            data_nascimento_input.set(@data_nascimento)

            puts "Selecionando Estado Civil de: #{@estado_civil}"
            estado_civil_select.select(@estado_civil)

            puts "Preenchendo Cidade de Nascimento do Imigrante: #{@cidade_nascimento}"
            cidade_nascimento_input.set(@cidade_nascimento)

            puts "Preenchendo Pais de Nascimento do Imigrante: #{@pais_nascimento}"
            pais_nascimento_select.select(@pais_nascimento)

            puts "Preenchendo Pais de Nacionalidade do Imigrante: #{@pais_nacionalidade}"
            pais_nacionalidade_select.select(@pais_nacionalidade)

            puts "Preenchendo Email do Imigrante: #{@email_imigrante}"
            email_imigrante_input.set(@email_imigrante)

            puts "Preenchendo Ocupacao Principal do Imigrante: #{@ocupacao_principal}"
            ocupacao_principal_textarea.set(@ocupacao_principal)
            
            wait_until_sugestao_load_visible
            ocupacao_principal_textarea.send_keys(:enter)

            puts "Preenchendo CPF do Imigrante: #{@cpf_imigrante}"
            cpf_imigrante_input.click.set(@cpf_imigrante)

            puts "Preenchendo Filiacao 1: #{@nome_filiacao_1}"
            filiacao_1_input.set(@nome_filiacao_1)

            puts "Selecionando Sexo Filiacao 1: Masculino"
            sexo_masculino_filiacao_1_radio.click

            puts "Preenchendo Filiacao 1: #{@nome_filiacao_2}"
            filiacao_2_input.set(@nome_filiacao_2)

            puts "Selecionando Sexo Filiacao 2: Masculino"
            sexo_masculino_filiacao_2_radio.click

            if(@tipo_requerimento == "Substituicao_de_CRNM" || @tipo_requerimento == "Segunda_via_CRNM")

                puts "Selecionando RNM TITULAR"
                rnm_titular_radio.click

                puts "Preenchendo RNM TITULAR: #{@rnm_titular}"
                rnm_titular_input.click.set(@rnm_titular)

            end

        elsif(@tipo_requerimento == "Alteracao_Endereco")

            @rnm_alteracao_alteracao_end = "V9707268"
            @nome_imigrante_alteracao_end = Faker::Name.male_first_name
            @sobrenome_imigrante_alteracao_end = Faker::Name.last_name
            @nome_anterior_completo_alteracao_end = Faker::Name.name_with_middle
            @nome_social_alteracao_end = Faker::Name.name_with_middle
            @email_imigrante_alteracao_end = Faker::Internet.email
            @cpf_imigrante_alteracao_end = Faker::CPF.numeric
            @nome_filiacao_1_alteracao_end = Faker::Name.name_with_middle
            @nome_filiacao_2_alteracao_end = Faker::Name.name_with_middle
            @data_nascimento_alteracao_end = "01011980"
            @estado_civil_alteracao_end = "CASADO"
            @cidade_nascimento_alteracao_end = "BERLIM"
            @pais_nascimento_alteracao_end = "ALEMANHA"
            @pais_nacionalidade_alteracao_end = "ALEMANHA"
            @ocupacao_principal_alteracao_end = "43 - MEDICO"

            puts "Preenchendo RNM - Alteracao Endereco: #{@rnm_alteracao_alteracao_end}"
            rnm_alteracao_endereco_input.click.set(@rnm_alteracao_alteracao_end)

            puts "Preenchendo Nome Imigrante - Alteracao Endereco: #{@nome_imigrante_alteracao_end}"
            nome_completo_alteracao_endereco_input.set(@nome_imigrante_alteracao_end)

            puts "Preenchendo Sobrenome Imigrante - Alteracao Endereco: #{@sobrenome_imigrante_alteracao_end}"
            sobrenome_imigrante_input.click.set(@sobrenome_imigrante_alteracao_end)

            puts "Preenchendo Nome Anterior Imigrante - Alteracao Endereco: #{@nome_anterior_completo_alteracao_end}"
            nome_anterior_completo_input.click.set(@nome_anterior_completo_alteracao_end)

            puts "Selecionando Nome Social - Alteracao Endereco"
            incluir_nome_social_checkbox.check

            puts "Preenchendo Nome Social Imigrante - Alteracao Endereco: #{@nome_social_alteracao_end}"
            nome_social_input.click.set(@nome_social_alteracao_end)

            puts "Selecionando Sexo Masculino do Imigrante - Alteracao Endereco"
            sexo_masculino_imigrante_alteracao_endereco_radio.click

            puts "Selecionando Estado Civil - Alteracao Endereco: #{@estado_civil_alteracao_end}"
            estado_civil_alteracao_endereco_select.select(@estado_civil_alteracao_end)

            puts "Preenchendo Filiacao 1 - Alteracao Endereco: #{@nome_filiacao_1_alteracao_end}"
            filiacao_1_alteracao_endereco_input.click.set(@nome_filiacao_1_alteracao_end)

            puts "Selecionando Sexo Masculino Filiacao 1 - Alteracao Endereco"
            sexo_masculino_filiacao_1_alteracao_endereco_radio.click

            puts "Preenchendo Filiacao 1 - Alteracao Endereco: #{@nome_filiacao_2_alteracao_end}"
            filiacao_2_alteracao_endereco_input.click.set(@nome_filiacao_2_alteracao_end)

            puts "Selecionando Sexo Masculino Filiacao 2 - Alteracao Endereco"
            sexo_masculino_filiacao_2_alteracao_endereco_radio.click

            puts "Preenchendo Data de Nascimento - Alteracao Endereco: #{@data_nascimento_alteracao_end}"
            data_nascimento_alteracao_endereco_input.click.set(@data_nascimento_alteracao_end)

            puts "Selecionando Pais de Nascimento - Alteracao Endereco: #{@pais_nascimento_alteracao_end}"
            pais_nascimento_alteracao_endereco_select.select(@pais_nascimento_alteracao_end)

            puts "Preechendo CPF - Alteracao Endereco: #{@cpf_imigrante_alteracao_end}"
            cpf_alteracao_endereco_input.click.set(@cpf_imigrante_alteracao_end)

            puts "Preechendo Ocupacao Principal - Alteracao Endereco: #{@ocupacao_principal_alteracao_end}"
            ocupacao_principal_alteracao_endereco_input.click.set(@ocupacao_principal_alteracao_end)

            wait_until_sugestao_load_visible
            ocupacao_principal_alteracao_endereco_input.send_keys(:enter)

            puts "Preechendo Cidade de Nascimento - Alteracao Endereco: #{@cidade_nascimento_alteracao_end}"
            cidade_nascimento_alteracao_endereco_input.click.set(@cidade_nascimento_alteracao_end)

            puts "Selecionando Pais de Nacionalidade - Alteracao Endereco: #{@cidade_nascimento_alteracao_end}"
            pais_nacionalidade_alteracao_endereco_select.select(@pais_nacionalidade_alteracao_end)

            puts "Preenchendo Email - Alteracao Endereco: #{@cidade_nascimento_alteracao_end}"
            email_alteracao_endereco_input.click.set(@email_imigrante_alteracao_end)

        end

        avancar_proximo

    end

    def preencher_dados_registro

        @numero_visto = "123456AB"
        @data_da_concessao = "01072019"
        @cidade_da_concessao = "BOGOTA"
        @pais_concedido = "COLOMBIA"
        @tipo_documento_viagem = "Passaporte"
        @numero_doc_viagem = "99999999999"
        @pais_expedidor_doc = "COLOMBIA"
        @sigla_uf_entrada = "DF"
        @local_entrada = "BRASILIA"
        @meio_transporte = "Aéreo"
        @data_entrada = "11072019"

        sleep(2)

        if(@tipo_requerimento == "Registro" || @tipo_requerimento == "Substituicao_de_CRNM" || @tipo_requerimento == "Segunda_via_CRNM")

            puts "Selecionando Visto: SIM"
            possui_visto_sim_radio.click

            puts "Preenchendo Numero do Visto: #{@numero_visto}"
            numero_visto_input.click.set(@numero_visto)

            puts "Preenchendo Data da Concessao do Visto: #{@data_da_concessao}"
            data_da_concessao_input.click.set(@data_da_concessao)

            puts "Preenchendo Cidade da Concessao do Visto: #{@cidade_da_concessao}"
            cidade_da_concessao_input.click.set(@cidade_da_concessao)

            puts "Selecionando Pais da Concessao do Visto: #{@pais_concedido}"
            pais_concedido_select.select(@pais_concedido)

        end

        puts "Selecionando Documento de Viagem: #{@tipo_documento_viagem}"
        tipo_documento_viagem_select.select(@tipo_documento_viagem)

        puts "Preenchendo Numero do Documento de Viagem: #{@numero_doc_viagem}"
        numero_doc_viagem_input.click.set(@numero_doc_viagem)

        puts "Selecionando Pais Expedidor do documento de Viagem: #{@pais_expedidor_doc}"
        pais_expedidor_doc_select.select(@pais_expedidor_doc)

        if(@tipo_requerimento != "Alteracao_de_Prazo" && @tipo_requerimento != "Substituicao_de_CRNM" && @tipo_requerimento != "Segunda_via_CRNM")

            puts "Selecionando UF Entrada: #{@sigla_uf_entrada}"
            sigla_uf_entrada_select.select(@sigla_uf_entrada)

            puts "Selecionando Local Entrada: #{@local_entrada}"
            local_entrada_select.select(@local_entrada)

            puts "Selecionando Meio de Transporte: #{@meio_transporte}"
            meio_transporte_select.select(@meio_transporte)

            puts "Preenchendo Data de Entrada: #{@data_entrada}"
            data_entrada_input.click.set(@data_entrada)

        end

        if(@tipo_requerimento == "Recadastramento_Extemporaneo")

            @data_publicacao = "01072019"
            @pagina_publicacao = "www.publicacao.com"
            @orgao_concedente = "Ministerio do Trabalho"

            puts "Preenchendo Data de Publicacao: #{@data_entrada}"
            data_publicacao_input.click.set(@data_publicacao)

            puts "Preenchendo Pagina da Publicacao: #{@pagina_publicacao}"
            pagina_publicacao_input.click.set(@pagina_publicacao)

            puts "Selecionando Orgao Concedente: #{@orgao_concedente}"
            orgao_concedente_select.select(@orgao_concedente)

        end

        avancar_proximo

    end

    def preencher_dados_endereco

        if(@tipo_requerimento != "Alteracao_Endereco")

            @cep_residencial = "04180-112"
            @complemento_residencial = "SANTA FE"
            @telefone_residencial = "61998765432"
            @telefone2_residencial = "61998765432"
            @nome_estabelecimento_comercial = "ESTABELEC"
            @cep_comercial = "04180-112"
            @complemento_comercial = "SANTA FE 2"
            @telefone_comercial = "61997775555"
            @nome_contato = Faker::Name.name_with_middle
            @telefone_contato = "61999998888"
            @vinculo_contato = "Parente"
            @pais_contato = "BRASIL"

            sleep(1)

            puts "Preenchendo CEP Residencial: #{@cep_residencial}"
            cep_residencial_input.click.set(@cep_residencial)

            complemento_residencial_input.send_keys(:tab)

            sleep(5)

            puts "Preenchendo Complemento Residencial: #{@cep_residencial}"
            complemento_residencial_input.click.set(@complemento_residencial)

            puts "Preenchendo Telefone Residencial: #{@telefone_residencial}"
            telefone_residencial_input.click.set(@telefone_residencial)

            puts "Preenchendo Telefone Residencial 2: #{@telefone2_residencial}"
            telefone2_residencial_input.click.set(@telefone2_residencial)

            puts "Preenchendo CEP Comercial: #{@telefone2_residencial}"
            cep_comercial_input.click.set(@cep_comercial)

            telefone2_residencial_input.send_keys(:tab)

            sleep(5)

            puts "Preenchendo Nome Estabelecimento Comercial: #{@nome_estabelecimento_comercial}"
            nome_estabelecimento_comercial_input.click.set(@nome_estabelecimento_comercial)

            puts "Preenchendo Complemento Comercial: #{@complemento_comercial}"
            complemento_comercial_input.click.set(@complemento_comercial)

            puts "Preenchendo Telefone Comercial: #{@telefone_comercial}"
            telefone_comercial_input.click.set(@telefone_comercial)

            if( @tipo_requerimento == "Alteracao_de_Prazo"              ||
                @tipo_requerimento == "Recadastramento_Extemporaneo"    ||
                @tipo_requerimento == "Substituicao_de_CRNM"            ||
                @tipo_requerimento == "Segunda_via_CRNM"                ||
                @tipo_requerimento == "Autorizacao_Residencia")

                @cep_exterior = "12345678"
                @logradouro_exterior = "Logradouro A"
                @complemento_exterior = "NUMERO 10"
                @estado_exterior = "REGIAO DE BOGOTA"
                @cidade_exterior = "BOGOTA"
                @pais_exterior = "COLOMBIA"

                puts "Preenchendo CEP Exterior: #{@cep_exterior}"
                cep_exterior_input.click.set(@cep_exterior)

                puts "Preenchendo Logradouro Exterior: #{@logradouro_exterior}"
                logradouro_exterior_input.click.set(@logradouro_exterior)

                puts "Preenchendo Complemento Exterior: #{@complemento_exterior}"
                complemento_exterior_input.click.set(@complemento_exterior)
                
                puts "Preenchendo Estado Exterior: #{@estado_exterior}"
                estado_exterior_input.click.set(@estado_exterior)

                puts "Preenchendo Cidade Exterior: #{@cidade_exterior}"
                cidade_exterior_input.click.set(@cidade_exterior)

                puts "Preenchendo Pais Exterior: #{@pais_exterior}"
                pais_exterior_input.select(@pais_exterior)

            end

            puts "Preenchendo Nome Contato: #{@nome_contato}"
            nome_contato_input.click.click.set(@nome_contato)

            puts "Preenchendo Telefone Contato: #{@telefone_contato}"
            telefone_contato_input.click.set(@telefone_contato)

            puts "Preenchendo Vinculo Contato: #{@vinculo_contato}"
            vinculo_contato_input.click.set(@vinculo_contato)

            puts "Preenchendo Pais Contato: #{@pais_contato}"
            pais_contato_select.select(@pais_contato)

        elsif(@tipo_requerimento == "Alteracao_Endereco")

            @cep_alteracao_end_residencial = "40010-020"
            @complemento_alteracao_end_residencial = "RUA A"
            @telefone_residencial_alteracao_end_residencial = "61976543210"
            @telefone_celular_alteracao_end_residencial = "61976543210"

            @cep_alteracao_end_comercial = "40010-020"
            @complemento_alteracao_end_comercial = "RUA B"
            @cidade_alteracao_end_comercial = "Salvador"
            @estado_alteracao_end_comercial = "BA"
            @telefone_alteracao_end_comercial = "61933334444"

            @cep_alteracao_end_exterior = "99999-999"
            @complemento_alteracao_end_exterior = "RUA X"
            @cidade_alteracao_end_exterior = "BERLIM"
            @logradouro_alteracao_end_exterior = "LOGRADOURO RUA X 123"
            @estado_alteracao_end_exterior = "ESTADO DE BERLIM"
            @pais_alteracao_end_exterior = "ALEMANHA"

            # PREENCHER ENDERECO ALTERACAO RESIDENCIAL INTERNET

            puts "Selecionando - Alteracao Endereco Residencial"
            alteracao_endereco_residencial_checkbox.click

            sleep(1)

            puts "Preenchendo CEP Residencial - Alteracao Endereco: #{@cep_alteracao_end_residencial}"
            cep_alteracao_endereco_residencial_input.click.set(@cep_alteracao_end_residencial)

            # --------------------------------------------- VERIFICAR POSSIBILIDADE DE MELHORIA ------------------------------------------------------

            complemento_alteracao_endereco_residencial_input.send_keys(:tab)

            sleep(5)
            
            puts "Preenchendo Complemento Residencial - Alteracao Endereco: #{@complemento_alteracao_end_residencial}"
            complemento_alteracao_endereco_residencial_input.click.set(@complemento_alteracao_end_residencial)

            puts "Preenchendo Telefone Residencial - Alteracao Endereco: #{@telefone_residencial_alteracao_end_residencial}"
            telefone_residencial_alteracao_endereco_residencial_input.click.set(@telefone_residencial_alteracao_end_residencial)

            puts "Preenchendo Telefone Celular - Alteracao Endereco: #{@telefone_celular_alteracao_end_residencial}"
            telefone_celular_alteracao_endereco_residencial_input.click.set(@telefone_celular_alteracao_end_residencial)

            sleep(1)

            puts "Anexando arquivo de alteracao de endereco residencial"
            anexar(anexar_arquivo_alteracao_endereco_residencial_input(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")

            sleep(1)
            
            has_arquivo_anexado_alteracao_endereco_residencial_link?(wait:10)

            # PREENCHER ENDERECO ALTERACAO COMERCIAL INTERNET

            puts "Selecionando - Alteracao Endereco Comercial"
            alteracao_endereco_comercial_checkbox.click

            sleep(1)

            puts "Preenchendo CEP Comercial - Alteracao Endereco: #{@cep_alteracao_end_comercial}"
            cep_alteracao_endereco_comercial_input.click.set(@cep_alteracao_end_comercial)

            complemento_alteracao_endereco_comercial_input.send_keys(:tab)

            sleep(5)

            puts "Preenchendo Complemento Comercial - Alteracao Endereco: #{@complemento_alteracao_end_comercial}"
            complemento_alteracao_endereco_comercial_input.click.set(@complemento_alteracao_end_comercial)

            puts "Selecionando Estado Endereco Comercial - Alteracao Endereco: #{@estado_alteracao_end_comercial}"
            estado_alteracao_endereco_comercial_select.select(@estado_alteracao_end_comercial)

            # --------------------------------------------- VERIFICAR POSSIBILIDADE DE MELHORIA ------------------------------------------------------

            estado_alteracao_endereco_comercial_select.send_keys(:up)
            estado_alteracao_endereco_comercial_select.send_keys(:down)

            sleep(5)

            puts "Selecionando Estado Endereco Comercial - Alteracao Endereco: #{@estado_alteracao_end_comercial}"
            cidade_alteracao_endereco_comercial_select.select(@cidade_alteracao_end_comercial)

            puts "Preenchendo Telefone Comercial - Alteracao Endereco: #{@telefone_alteracao_end_comercial}"
            telefone_alteracao_endereco_comercial_input.click.set(@telefone_alteracao_end_comercial)

            sleep(1)

            puts "Anexando arquivo de alteracao de endereco comercial"
            anexar(anexar_arquivo_alteracao_endereco_comercial_input(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")

            sleep(1)
            
            has_arquivo_anexado_alteracao_endereco_comercial_link?(wait:10)

            # PREENCHER ENDERECO ALTERACAO EXTERIOR INTERNET

            puts "Selecionando - Alteracao Endereco Exterior"
            alteracao_endereco_exterior_checkbox.click

            sleep(1)

            puts "Preenchendo CEP Exterior - Alteracao Endereco: #{@cep_alteracao_end_exterior}"
            cep_alteracao_endereco_exterior_input.click.set(@cep_alteracao_end_exterior)

            # --------------------------------------------- VERIFICAR POSSIBILIDADE DE MELHORIA ------------------------------------------------------

            complemento_alteracao_endereco_exterior_input.send_keys(:tab)

            sleep(5)

            puts "Preenchendo Complemento Endereco Exterior - Alteracao Endereco: #{@complemento_alteracao_end_exterior}"
            complemento_alteracao_endereco_exterior_input.click.set(@complemento_alteracao_end_exterior)

            puts "Preenchendo Cidade Endereco Exterior - Alteracao Endereco: #{@cidade_alteracao_end_exterior}"
            cidade_alteracao_endereco_exterior_input.click.set(@cidade_alteracao_end_exterior)

            puts "Preenchendo Logradouro Endereco Exterior - Alteracao Endereco: #{@logradouro_alteracao_end_exterior}"
            logradouro_alteracao_endereco_exterior_input.click.set(@logradouro_alteracao_end_exterior)

            puts "Preenchendo Estado Endereco Exterior - Alteracao Endereco: #{@estado_alteracao_end_exterior}"
            estado_alteracao_endereco_exterior_input.click.set(@estado_alteracao_end_exterior)

            puts "Preenchendo Pais Endereco Exterior - Alteracao Endereco: #{@pais_alteracao_end_exterior}"
            pais_alteracao_endereco_exterior_input.select(@pais_alteracao_end_exterior)

            sleep(1)

            puts "Anexando arquivo de alteracao de endereco exterior"
            anexar(anexar_arquivo_alteracao_endereco_exterior_input(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")

            sleep(1)
            
            has_arquivo_anexado_alteracao_endereco_exterior_link?(wait:10)

        end

        avancar_proximo

    end

    def preencher_declaracao(minutos_total)

        puts "Selecionando declaracao OK"
        declaracao_checkbox.check

        puts "Setando campo de Captcha"
        texto_imagem_input.click

        @minuto_inicial = 1
        @minutos_total = @minuto_inicial + minutos_total

        if(has_impressao_da_solicitacao_form?(wait:60))

            puts "Visualizando tela de Impressao de Solicitacao #{@tipo_requerimento}"
            @nr_req = numero_requerimento_span.text
            gravar_dados("features/arquivos/requerimentos/#{@tipo_requerimento}.txt", @nr_req)

        else

            puts "O Captcha nao foi preenchido num perido de #{@minutos_total} minutos, favor Preencher Captcha para terminar Solicitacao"
            preencher_declaracao(@minutos_total)

        end

    end

    def verificar_protocolo_e_andamento_do_requerimento(tipo_requerimento, tipo_verificacao)

        @dados_requerimento_protocolo = recuperar_dados("features/arquivos/requerimentos/#{tipo_requerimento}.txt")

        if(tipo_verificacao == "Verificacao_de_Protocolo")

            puts "Verificando Protocolo de numero: #{@dados_requerimento_protocolo[0]}"
            numero_protocolo_requerimento_input.click.set(@dados_requerimento_protocolo[0])

            puts "Clicando no botao para Verificar Protocolo"
            verificar_protocolo_btn.click

            sleep(1)

        elsif(tipo_verificacao == "Andamento_do_Requerimento")

            puts "Andamento Requerimento de numero: #{@dados_requerimento_protocolo[0]}"
            numero_andamento_requerimento_input.click.set(@dados_requerimento_protocolo[0])

            puts "Clicando no botao para Pesquisar Andamento"
            pesquisar_btn.click
            aguardar_carregamento_load

            sleep(1)

        end


    end

    def aguardar_carregamento_load 

        wait_until_carregamento_load_invisible

    end

    def avancar_proximo

        puts "Clicando no botao Proximo"
        avancar_proximo_btn.click
        aguardar_carregamento_load
        
        sleep(1)

    end

end