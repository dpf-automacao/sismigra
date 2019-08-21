class ProcessarConferencia < PageHelper
    include FileHelper

    #Elementos para pesquisar o requerimento
    element :nr_requerimento_input, 'input[id*="numeroRequerimento"]'
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"

    #Elementos processar conferencia - Devolver para unidade
    element :registrar_conferencia_btn, "a[title*='Registrar Conferência']"
    element :aba_resultado_conferencia, 'td[id*="Resultado_lbl"]'
    element :devolver_para_unidade_radio, 'input[value="1"]'
    element :outros_checkbox, :xpath, '//*[text()[contains(.,"Outros")]]/../input'
    element :outros_textarea, :xpath, '//*[@id="formulario-processar-cie:formResultadoConferencia:divOutrasSituacoes"]/textarea'
    element :concluir_btn,'input[value="Concluir"]'

    #Elementos processar conferencia
    element :tratar_processo_devolvido_btn, 'input[title*="Tratar Processos Devolvidos"]'
    element :aba_previa_carteira, 'td[id*="PreviaCarteira_lbl"]'
    element :aba_dados_registro, 'td[id*="DadosRegistro_lbl"]'
    element :deferir_btn, "input[value='Deferir']"
    element :confirmar_deferimento_btn, "table[id='confirmacaoAssinaturaContentTable'] input[value='Sim']"

    #Elementos processar conferencia - Dados conferidos com sucesso
    element :registrar_conferencia_btn, "a[title*='Registrar Conferência']"
    element :aba_resultado_conferencia, 'td[id*="Resultado_lbl"]'
    element :dados_conferidos_radio, 'input[value="0"]'
    element :impressao_digital_select, 'select[id*="cmbImpressaoDigital"]'
    element :assinatura_select, 'select[id*="cmbAssinatura"]'
    element :concluir_btn,'input[value="Concluir"]'


    def pesquisar_requerimento_registro
        puts "Pesquisando requerimento"
        @tipo_solicitacao = "registro"
        @nr_registro = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        nr_requerimento_input.click.set(@nr_registro[0].chomp)
        pesquisar_requerimento_btn.click
        aguardar_carregamento
    end

    def devolver_para_unidade_local
        registrar_conferencia_btn.click
        aba_resultado_conferencia.click
        devolver_para_unidade_radio.click
        aguardar_carregamento
        outros_checkbox.click
        outros_textarea.set('TESTANTO AUTOMAÇÃO !!!')
        concluir_btn.click
        aguardar_carregamento
    end

    def deferir_processo_devolvido
        tratar_processo_devolvido_btn.click
        aba_dados_registro.click
        aba_previa_carteira.click
        deferir_btn.click
        aguardar_carregamento
        confirmar_deferimento_btn.click
        binding.pry
        aguardar_carregamento
    end

    def dados_conferidos_sucesso
        registrar_conferencia_btn.click
        aba_resultado_conferencia.click
        aguardar_carregamento
        dados_conferidos_radio.click
        aguardar_carregamento
        impressao_digital_select.select('Presente')
        assinatura_select.select('Presente')
        concluir_btn.click
        aguardar_carregamento
    end

end