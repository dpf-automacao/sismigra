class ManutencaoRegistroPage < PageHelper
    include FileHelper

    #Elementos para pesquisar o requerimento
    element :nr_requerimento_input, 'input[id*="numeroRequerimento"]'
    element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"

    #Elementos para inativação do registro
    element :detalhar_btn, 'input[title*="Detalhar Processo."]'
    element :aba_historico, 'td[id*="HistoricoErroMaterialRequerimento_lbl"]'
    element :atualizar_status_btn, 'input[title="Atualizar status"]'
    element :inativar_status_radio, 'input[value*="INATIVO"]'
    element :motivo_inativar_select, 'select[id*="mtCancelamento"]'
    element :observacoes_textarea, 'textarea[name*="recuperarExtravio"]'
    element :confirmar_btn, 'input[value*="Confirmar"]'

    #Elementos para IMPRIMIR
    element :imprimir_protocolo_atual_btn, 'a[title="Reimprimir Protocolo Atual"]'
    
    def pesquisar_requerimento_registro
        @tipo_solicitacao = "registro"
        @nr_registro = recuperar_dados("features/arquivos/requerimentos/#{@tipo_solicitacao}.txt")
        wait_until_pesquisar_requerimento_btn_visible
        puts "Pesquisando Requerimento numero:#{@nr_registro}"
        nr_requerimento_input.click.set(@nr_registro[0].chomp)
        pesquisar_requerimento_btn.click
        aguardar_carregamento
    end

    def detalhar_registro_imigrante
        detalhar_btn.click
        aguardar_carregamento
    end

    def inativar_registro
        #aba_historico.click
        #aguardar_carregamento
        wait_until_atualizar_status_btn_visible
        atualizar_status_btn.click
        aguardar_carregamento
        inativar_status_radio.click
        aguardar_carregamento
        motivo_inativar_select.select('Ausencia do país')
        observacoes_textarea.click.set('TESTANDO AUTOMAÇÃO !!!')
        sleep(3)
        confirmar_btn.click
        aguardar_carregamento
    end

    def imprimir_protocolo_atual
        imprimir_protocolo_atual_btn.click
    end

end