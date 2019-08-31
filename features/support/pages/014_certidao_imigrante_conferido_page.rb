class EmitirCertidaoEmigrantePage < PageHelper

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

    #Elementos para emitir certidão de registro do imigrante conferido
    element :imprimir_certidao_btn, 'input[class*="btnImprimir2"]'
    element :imprimir_certidao_registro_checkbox, 'input[value="REGISTRO"]'
    element :visualizar_certidao_btn, 'input[value="Imprimir"]'

    #Elementos para emitir certidão de registro do imigrante conferido
    element :imprimir_certidao_historico_checkbox, 'input[value="SOLICITACAO"]'

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

    def certidao_registro_imigrante_conferido
        puts "Imprimindo certidão de registro"
        imprimir_certidao_btn.click
        imprimir_certidao_registro_checkbox.click
        visualizar_certidao_btn.click
    end

    def certidao_historico_imigrante_conferido
        puts "Imprimindo certidão de histórico"
        imprimir_certidao_btn.click
        imprimir_certidao_historico_checkbox.click
        visualizar_certidao_btn.click
    end

end