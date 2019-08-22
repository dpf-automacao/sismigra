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
    element :aba_previa_carteira_ativa, 'td[id*="PreviaCarteira_lbl"][class*="rich-tab-active"]'
    element :aba_dados_registro, 'td[id*="DadosRegistro_lbl"]'
    element :aba_dados_registro_ativa, 'td[id*="DadosRegistro_lbl"][class*="rich-tab-active"]'
    element :deferir_btn, "input[value='Deferir']"
    element :confirmar_deferimento_btn, "table[id='confirmacaoAssinaturaContentTable'] input[value='Sim']"
    element :proximo_btn, 'input[value="Próximo"]'

    #Elementos processar conferencia - Dados conferidos com sucesso
    element :registrar_conferencia_btn, "a[title*='Registrar Conferência']"
    element :aba_resultado_conferencia, 'td[id*="Resultado_lbl"]'
    element :dados_conferidos_radio, 'input[value="0"]'
    element :impressao_digital_select, 'select[id*="cmbImpressaoDigital"]'
    element :assinatura_select, 'select[id*="cmbAssinatura"]'
    element :concluir_btn,'input[value="Concluir"]'


    ## MÉTODOS ## 
    def pesquisar_requerimento_registro
        @tipo_solicitacao = "registro"
        @nr_registro = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        wait_until_pesquisar_requerimento_btn_visible
        puts "Pesquisando Requerimento numero:#{@nr_registro}"
        nr_requerimento_input.click.set(@nr_registro[0].chomp)
        pesquisar_requerimento_btn.click
        aguardar_carregamento
    end

    def devolver_para_unidade_local
        puts "Devolvendo registro para unidade local"
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
        puts "Deferindo processo devolvido"
        tratar_processo_devolvido_btn.click
        aguardar_carregamento
        puts "Aguandando aba de dados do registro"
        aba_dados_registro.click
        wait_until_aba_dados_registro_ativa_visible

        puts "Aguandando aba prévia da carteira"
        aba_previa_carteira.click
        wait_until_aba_previa_carteira_ativa_visible

        wait_until_deferir_btn_visible
        puts "Clicando no botão Deferir"
        deferir_btn.click

        puts "Conformando deferimento"
        aguardar_carregamento
        wait_until_confirmar_deferimento_btn_visible
        confirmar_deferimento_btn.click
        aguardar_carregamento
    end

    def dados_conferidos_sucesso
        puts "Registrando conferencia"
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