class EmitirCertidaoEmigrantePage < PageHelper
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


    def pesquisar_requerimento_registro
        puts "Pesquisando requerimento"
        @tipo_solicitacao = "registro"
        @nr_registro = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        nr_requerimento_input.click.set(@nr_registro[0].chomp)
        pesquisar_requerimento_btn.click
        aguardar_carregamento
    end

    def certidao_registro_imigrante_conferido
        imprimir_certidao_btn.click
        imprimir_certidao_registro_checkbox.click
        visualizar_certidao_btn.click
    end

    def certidao_historico_imigrante_conferido
        imprimir_certidao_btn.click
        imprimir_certidao_historico_checkbox.click
        visualizar_certidao_btn.click
    end

end