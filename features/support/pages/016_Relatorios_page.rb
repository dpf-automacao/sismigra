class RelatoriosPage < SitePrism::Page

=begin

Autor: Maria Emilia
Data: 31/08/2019
Versão: 1.0
Contato: 

=end

    #MAPEAMENTO ELEMENTOS DA TELA - AUDITORIA
    element :periodo_inicial_input, "input[id*='Inicio'][type='text']"
    element :periodo_final_input, "input[id*='Final'][type='text']"
    element :nome_servidor_input, "input[id*='idTipoServidor'][type='text']"
    element :imprimir_tela_radio, "input[value='EM_TELA']"
    element :gerar_button, "input[value='Gerar']"

    #MAPEAMENTO ELEMENTOS DA TELA - HISTORICO DE IMIGRANTE
    element :rnm_input, "input[id*='campoRNE']"
    element :load_carregar, 'img[src*="spinner.gif"]'

   #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Erro no Número do RNM
   element :checkbox_deferido_input, "input[value='E']"
   element :checkbox_indeferido_input, "input[value='N']"

    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Cédulas
    element :icone_adicionar_unidade, 'a img[title="Adicionar"][class*="mLeft25px"]'
    element :unidade_circunscricao_select, "select[id*='Unidade']"

    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Imigrantes Registrados
    element :pais_nacionalidade_select, 'select[name*="qtdeEstrangeirosRegistradosForm:j_id130"]'
    element :unidade_circunscricao_select2, 'select[class="w100pc"][name*="qtdeEstrangeirosRegistradosForm:j_id141"]'

    #MAPEAMENTO ELEMENTOS DA TELA - Solicitações Indeferidas na Decisão
    element :icone_adicionar_unidade2, 'a img[title="Adicionar"][class*="mTop3px"]'

    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Solicitação Cadastradas
    element :periodo_inicial_input6, 'input[id*="dataInicioInputDate"]'
    element :periodo_final_input6, 'input[id*="dataFimInputDate"]'

     #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo DE ERRO MATERIAL
     element :periodo_inicial_input7, 'input[id*="formulario-relatorio-erro-rne:dataInicioInputDate"]'
     element :periodo_final_input7, 'input[id*="formulario-relatorio-erro-rne:dataFimInputDate"]'
     element :icone_adicionar_unidade3, 'a img[title="Adicionar"][class*="mTop3px"]'
     element :radio_button_deferido, 'input[id*="formulario-relatorio-erro-rne:j_id138:0"][value="DEFERIDO"]'
     element :radio_button_indeferido, 'input[id*="formulario-relatorio-erro-rne:j_id138:1"][value="INDEFERIDO"]'

    #MAPEAMENTO ELEMENTOS DA TELA - CÉDULAS NÃO RECEBIDAS
    element :unidade_circunscricao_select6, "select[name*='relatorioSolicitacao']"
    element :radio_button_prazo_enviada_30_dias, "input[value='DIAS30']"

    #MAPEAMENTO ELEMENTOS DA TELA - REQUERIMENTOS SUSPENSOS
    element :unidade_circunscricao_select7, "select[name*='relatorioRequerimentosSuspensos']"
    element :radio_button_prazo_suspensao_60_dias, "input[value='DIAS60']"
   
    @data_atual = Time.now
    @unidade_circunscricao = 'DELEMIG/DREX/SR/PF/DF'
    @periodo_inicial = "01/08/2019"
    @periodo_final = @data_atual.strftime("%d/%m/%Y")

    #METODO PARA RELATORIO - AUDITORIA

    def preencher_relatorio_auditoria
        @nome_servidor = "DANTE LUIZ PIPPI FILHO"
        puts "Preenchendo parâmetros de Relatório de Auditoria"

        binding.pry
        puts "Preenchendo periodo inicial: #{@periodo_inicial}"
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        nome_servidor_input.click.set(@nome_servidor)
        nome_servidor_input.send_keys(:enter)
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    #METODO PARA RELATORIO - HISTORICO DE IMIGRANTE

    def preencher_relatorio_historico
        @rnm = "F1400397"
        puts 'Preenchendo parâmetros de Relatório de Histórico de Imigrante'
        rnm_input.click.set(@rnm)
        wait_until_imprimir_tela_radio_visible
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    #METODO PARA RELATORIO - Quantitativo de Erro no Número do RNM

    def preencher_relatorio_quantitativo_erro_rnm
        puts 'Preenchendo parâmetros de relatório de Quantitativo de Erro no Número do RNM'
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        checkbox_deferido_input.click
        checkbox_indeferido_input.click
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_quantitativo_cedulas
        puts 'Preenchendo parâmetros de Relatório de Quantitativo de Cédulas'
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        puts "Preenchendo unidade de Circunscrição da PF #{@unidade_circunscricao}" 
        unidade_circunscricao_select.select(@unidade_circunscricao)
        icone_adicionar_unidade.click
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_quantitativo_imigrantes_registrados
        puts 'Preenchendo parâmetros de Relatório de quantitativo de imigrantes registrados'
        @pais_nacionalidade = "BOLIVIA"
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        pais_nacionalidade_select.select(@pais_nacionalidade)
        unidade_circunscricao_select2.select(@unidade_circunscricao)
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_solicitacoes_indeferida_decisao
        puts 'Preenchendo parâmetros de Relatório de Solicitações indeferidas na decisão'
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        unidade_circunscricao_select.select(@unidade_circunscricao)
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_quantitativo_solicitacoes_cadastradas
        puts 'Preenchendo parâmetros de Relatório de quantitativo de solicitações cadastradas'
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        unidade_circunscricao_select.set(@unidade_circunscricao)
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_quantitativo_erro_material
        puts 'Preenchendo pâmetros de Relatório de Quantitativo de Erro Material'
        periodo_inicial_input.click.set(@periodo_inicial)
        periodo_final_input.click.set(@periodo_final)
        unidade_circunscricao_select.set(@unidade_circunscricao)
        imprimir_tela_radio.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end

    def preencher_relatorio_cedulas_nao_recebidas
        puts 'Preenchendo pâmetros de Relatório de Cédulas não Recebidas'
        unidade_circunscricao_select6.set(@unidade_circunscricao)
        radio_button_prazo_enviada_30_dias.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end


    def preencher_relatorio_requerimentos_suspensos
        puts 'Preenchendo pâmetros de Relatório de Requerimentos Suspensos'
        unidade_circunscricao_select7.set(@unidade_circunscricao)
        radio_button_prazo_suspensao_60_dias.click
        gerar_button.click
        wait_until_load_carregar_invisible
    end


end