class PesquisarImigrantePage < PageHelper
    include FileHelper

    #Elementos para pesquisar o requerimento
    element :nr_requerimento_input, 'input[id*="numeroRequerimento"]'
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"

    #Elementos para detalhar processo
    element :detalhar_btn, 'input[title*="Detalhar Processo."]'
    element :imprimir_btn, "input[value='Imprimir']"

    #Elementos para renovar protocolo do imigrante
    element :renovar_protocolo_btn, 'a[title*="Renovar Protocolo"]'
    element :qtd_dias_renovacao_input, 'input[name*="idQtdDias"]'
    element :confirmar_renovacao_btn, 'input[value*="Confirmar"]'

    #Elemento para visualizar protocolo renovado
    element :visualizar_protocolo_renovado_btn, 'a[title*="Imprimir Protocolo Com Prazo Renovado"]'

     #Elemento para reimprimir protocolo
     element :reimprimir_protocolo_btn, 'a[class="btnImprimir"]'


     ## MÉTODOS ## 
    def pesquisar_requerimento_registro
        puts "Pesquisando requerimento"
        @tipo_solicitacao = "registro"
        @nr_registro = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        nr_requerimento_input.click.set(@nr_registro[0].chomp)
        pesquisar_requerimento_btn.click
        aguardar_carregamento
    end

    def detalhar_processo
        puts "Detalhando processo"
        detalhar_btn.click
        aguardar_carregamento
    end

    def visualizar_detalhamento_processo
        puts "Visualizabdo detalhamento do processo"
        imprimir_btn.click
        visualizar_impressao
    end

    def renovar_protocolo_imigrante
        puts "Renovando protocolo imigrante"
        renovar_protocolo_btn.click
        aguardar_carregamento
        qtd_dias_renovacao_input.set('180')
        confirmar_renovacao_btn.click
        aguardar_carregamento
    end

    def visualizar_protocolo_renovado
        puts "Visualizando protocolo renovado"
        visualizar_protocolo_renovado_btn.click
        visualizar_impressao
    end

    def reimprimir_protocolo
        puts "Reimprimir protocolo"
        aguardar_carregamento
        reimprimir_protocolo_btn.click
    end


end