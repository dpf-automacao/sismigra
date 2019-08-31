class DecisaoRequerimento < PageHelper

=begin

Autor: Claudio Junior
Data: 31/08/2019
Versão: 1.0
Contato: 

=end
    
    include FileHelper

    #Elementos para pesquisar o requerimento
    element :nr_requerimento_input, 'input[id*="numeroRequerimento"]'
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"

    #Elementos para anexar formulário
    element :anexar_formulario_btn, "a[title*='Anexar Formulário']" 
    element :upload_formulario_btn, 'input[id="form:upload:file"]'

    #Elementos para indeferir o requerimento
    element :editar_solicitacao_btn, "a[title*='Editar Solicitação']"
    element :indeferir_btn, "input[value='Indeferir']"
    element :justificativa_text, "textarea[id='_formidModalIndeferir:_id_textArea']"
    element :salvar_justificativa_btn, "input[value='Salvar'][id*='Indeferir']"
    element :salvar_anexo_btn, "input[value='Salvar']"

    #Elementos para gerar termo de indeferimento
    element :gerar_termo_indeferimento_btn, "input[value='Termo De Indeferimento']"

    #Elementos para deferir o requerimento
    element :aba_dados_registro, 'td[id*="DadosRegistro_lbl"]'
    element :aba_previa_carteira, 'td[id*="PreviaCarteira_lbl"]'
    element :deferir_btn, "input[value='Deferir']"
    element :confirmar_deferimento_btn, "table[id='confirmacaoAssinaturaContentTable'] input[value='Sim']"
    element :imprimir_btn, "input[value='Imprimir']"
    element :proximo_btn, 'input[value="Próximo"]'


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

    def indeferir_solicitacao
        puts "Indeferindo requerimento"
        editar_solicitacao_btn.click
        indeferir_btn.click
        justificativa_text.set('Testando automação de indeferimento !!!')
        salvar_justificativa_btn.click
    end

    def deferir_solicitacao
        puts "Deferindo requerimento"
        aguardar_carregamento
        editar_solicitacao_btn.click
        aguardar_carregamento
        aba_dados_registro.click

        if (has_proximo_btn?(wait:10))
            aba_previa_carteira.click
        end
        if (has_deferir_btn?(wait:10))
            aguardar_carregamento
            deferir_btn.click
        end
    end

    def confirmar_deferimento
        puts "Confirmando deferimento"
        confirmar_deferimento_btn.click
        imprimir_btn.click
        visualizar_impressao
    end

    def gerar_termo_indeferimento
        puts "Visualizando termo indeferimento"
        gerar_termo_indeferimento_btn.click
        visualizar_impressao
    end

    def anexar_formulario
        puts "Anexando formulário"
        anexar_formulario_btn.click
        @path = File.join(Dir.pwd, "features/arquivos/arquivo_teste.jpg").gsub(File::SEPARATOR, File::ALT_SEPARATOR || File::SEPARATOR)
        upload_formulario_btn(visible: false).set(@path)
        sleep(2)
        salvar_anexo_btn.click
    end
end