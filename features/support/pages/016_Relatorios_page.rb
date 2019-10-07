class RelatoriosPage < SitePrism::Page

=begin

Autor: Maria Emilia
Data: 31/08/2019
Versão: 1.0
Contato: 

=end

    #MAPEAMENTO ELEMENTOS DA TELA - HISTORICO DE IMIGRANTE
    element :rnm_input, 'input[id*="formulario-auditoria:campoRNE"]'
    element :nome_input, 'input[id*="formulario-auditoria:inputText_idTipoServidor"]'
    element :imprimir_tela_radio, 'input[id*="formulario-auditoria:j_id143:0"][value="EM_TELA"]'
    element :gerar_button, 'input[class="btn"]'
    element :load_carregar, 'img[src*="spinner.gif"]'

    #MAPEAMENTO ELEMENTOS DA TELA - AUDITORIA
    element :periodo_inicial_input, 'input[id*="formulario-auditoria:periodoInicioAuditoriaInputDate"]'
    element :periodo_final_input, 'input[id*="formulario-auditoria:periodoFinalAuditoriaInputDate"]'
    element :nome_servidor_input, 'input[id*="formulario-auditoria:inputText_idTipoServidor"]'
    element :imprimir_tela_radio2, 'input[id*="formulario-auditoria:j_id179:0"][value="EM_TELA"]'
    element :gerar_button2, 'input[id*="formulario-auditoria:j_id188"]'

   #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Erro no Número do RNM
   #element :periodo_inicial_input2, 'input[id*="formulario-relatorio-erro-rne:dataInicioInputDate"]'
   #element :periodo_final_input2, 'input[id*="formulario-relatorio-erro-rne:dataFimInputDate"]'
   element :periodo_inicial_input2, 'span[id*="formulario-relatorio-erro-rne:dataInicioPopup"]'
   element :periodo_final_input2, 'span[id*="formulario-relatorio-erro-rne:dataFimPopup"]'
   element :checkbox_deferido_input, 'input[id*="formulario-relatorio-erro-rne:j_id133:0"][value="E"]'
   element :checkbox_indeferido_input, 'input[id*="formulario-relatorio-erro-rne:j_id133:1"][value="N"]'
   element :imprimir_tela_radio3, 'input[id*="formulario-relatorio-erro-rne:j_id138:0"]'
   element :gerar_button3, 'input[class="btn"][value="Gerar"]'


    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Cédulas
    element :periodo_inicial_input3, 'input[id*="formulario-pesquisa:dataInicioInputDate"]'
    element :periodo_final_input3, 'input[id*="formulario-pesquisa:dataFimInputDate"]'
    element :icone_adicionar_unidade, 'a img[title="Adicionar"][class*="mLeft25px"]'
    element :unidade_circunscricao_select, 'select[id*="formulario-pesquisa:idUnidade"]'
    element :imprimir_tela_radio4, 'input[id*="formulario-pesquisa:j_id158:0"]'
    element :gerar_button4, 'input[value="Gerar"]'

    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Imigrantes Registrados
    element :periodo_inicial_input4, 'input[id*="qtdeEstrangeirosRegistradosForm:dataInicioInputDate"]'
    element :periodo_final_input4, 'input[id*="qtdeEstrangeirosRegistradosForm:dataFimInputDate"]'
    element :pais_nacionalidade_select, 'select[name*="qtdeEstrangeirosRegistradosForm:j_id128"]'
    element :unidade_circunscricao_select2, 'select[class="w100pc"][name*="qtdeEstrangeirosRegistradosForm:j_id139"]'
    element :imprimir_tela_radio5, 'input[id*="qtdeEstrangeirosRegistradosForm:j_id182:0"][value="EM_TELA"]'
    element :gerar_button5, 'input[name*="qtdeEstrangeirosRegistradosForm:j_id186"]'

    #MAPEAMENTO ELEMENTOS DA TELA - Solicitações Indeferidas na Decisão
    element :periodo_inicial_input5, 'input[id*="formulario-despachoIndeferido:dataInicioInputDate"]'
    element :periodo_final_input5, 'input[id*="formulario-despachoIndeferido:dataFimInputDate"]'
    element :unidade_circunscricao_select3, 'select[id*="formulario-despachoIndeferido"][class*="w100pc"]'
    element :icone_adicionar_unidade2, 'a img[title="Adicionar"][class*="mTop3px"]'
    element :imprimir_tela_radio6, 'input[id*="formulario-despachoIndeferido:j_id145:0"][value="EM_TELA"]'
    element :gerar_button6, 'input[name*="formulario-despachoIndeferido:j_id148"]'

    #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo de Solicitação Cadastradas
    element :periodo_inicial_input6, 'input[id*="dataInicioInputDate"]'
    element :periodo_final_input6, 'input[id*="dataFimInputDate"]'
    element :unidade_circunscricao_select4, 'select[name*="formulario-relatorio-erro-rne:idUnidade"]'
    element :imprimir_tela_radio7, 'input[id*="formulario-relatorio-erro-rne:j_id170:0"][value="EM_TELA"]'
    element :gerar_button7, 'input[name*="formulario-relatorio-erro-rne:j_id174"]'

     #MAPEAMENTO ELEMENTOS DA TELA - Quantitativo DE ERRO MATERIAL
     element :periodo_inicial_input7, 'input[id*="formulario-relatorio-erro-rne:dataInicioInputDate"]'
     element :periodo_final_input7, 'input[id*="formulario-relatorio-erro-rne:dataFimInputDate"]'
     element :unidade_circunscricao_select5, 'select[id*="formulario-relatorio-erro-rne:idUnidade"]'
     element :icone_adicionar_unidade3, 'a img[title="Adicionar"][class*="mTop3px"]'
     element :radio_button_deferido, 'input[id*="formulario-relatorio-erro-rne:j_id138:0"][value="DEFERIDO"]'
     element :radio_button_indeferido, 'input[id*="formulario-relatorio-erro-rne:j_id138:1"][value="INDEFERIDO"]'
     element :imprimir_tela_radio8, 'input[id*="formulario-relatorio-erro-rne:j_id143:0"]'
     element :gerar_button8, 'input[name*="formulario-relatorio-erro-rne:j_id147"]'

    #MAPEAMENTO ELEMENTOS DA TELA - CÉDULAS NÃO RECEBIDAS
    element :unidade_circunscricao_select6, 'select[name*="formulario-relatorioSolicitacao:j_id122"]'
    element :radio_button_prazo_enviada, 'input[id*="formulario-relatorioSolicitacao:j_id128:0"]'
    element :gerar_button9, 'input[name*="formulario-relatorioSolicitacao:j_id132"]'

    #MAPEAMENTO ELEMENTOS DA TELA - REQUERIMENTOS SUSPENSOS
    element :unidade_circunscricao_select7, 'select[name*="formulario-relatorioRequerimentosSuspensos:j_id122"]'
    element :radio_button_prazo_suspensao, 'input[id*="formulario-relatorioRequerimentosSuspensos:j_id128:0"]'
    element :gerar_button10, 'input[name*="formulario-relatorioRequerimentosSuspensos:j_id132"]'
   
   #METODO PARA RELATORIO - AUDITORIA
    def preencher_relatorio_auditoria
        @data_atual = Time.now
        @periodo_inicial = "01/08/2019"
        @periodo_final = "02/08/2019"
        @nome_servidor = "DANTE LUIZ PIPPI FILHO"
        # @periodo_final = @data_atual.strftime("%d/%m/%Y")
        # find('input[id*="formulario-auditoria:periodoInicioAuditoriaInputDate"]').set("13/07/2019")
        # find('input[id*="formulario-auditoria:periodoFinalAuditoriaInputDate"]').set("13/08/2019")
        puts 'Preenchendo parâmetros de Relatório de Auditoria'
        puts "Preenchendo periodo inicial: #{@periodo_inicial}"
        periodo_inicial_input.click.set(@periodo_inicial)
        sleep(1)
        periodo_final_input.click.set(@periodo_final)
        sleep(1)
        nome_servidor_input.click.set(@nome_servidor)
        sleep(1)
        nome_servidor_input.send_keys(:enter)
        imprimir_tela_radio2.click
        gerar_button2.click
        wait_until_load_carregar_invisible
        sleep(3)
    end


    #METODO PARA RELATORIO - HISTORICO DE IMIGRANTE
    def preencher_relatorio_historico
        puts 'Preenchendo parâmetros de Relatório de Histórico de Imigrante'
        find('input[id*="formulario-auditoria:campoRNE"]').set('F1400397')
        find('input[id*="formulario-auditoria:inputText_idTipoServidor"')#.send_keys(:enter)
        wait_until_imprimir_tela_radio_visible
        imprimir_tela_radio.click
        sleep(1)
        gerar_button.click
        wait_until_load_carregar_invisible
        sleep(3)
    end

    #METODO PARA RELATORIO - Quantitativo de Erro no Número do RNM
    def preencher_relatorio_quantitativo_erro_rnm
        puts 'Preenchendo parâmetros de relatório de Quantitativo de Erro no Número do RNM'
        #@data_atual = Time.now
        #@periodo_inicial = "01/08/2018"
        #@periodo_final = @data_atual.strftime("%d/%m/%Y")
        # periodo_inicial_input2.click.set(@periodo_inicial)
        # periodo_final_input.click.set(@periodo_final)
        find('input[id*="formulario-relatorio-erro-rne:dataInicioInputDate"]').set("01/08/2018")
        find('input[id*="formulario-relatorio-erro-rne:dataFimInputDate"]').set("14/08/2019")
        checkbox_deferido_input.click
        sleep(0.5)
        checkbox_indeferido_input.click
        sleep(0.5)
        imprimir_tela_radio3.click
        sleep(0.5)
        gerar_button3.click
        wait_until_load_carregar_invisible
        sleep(3)
    end

    def preencher_relatorio_quantitativo_cedulas

        puts 'Preenchendo parâmetros de Relatório de Quantitativo de Cédulas'
        @periodo_inicial = "01/08/2019"
        @periodo_final = "14/08/2019"
        @unidade_circunscricao = "DELEMIG/DREX/SR/PF/DF"

        periodo_inicial_input3.set(@periodo_inicial)
        periodo_final_input3.set(@periodo_final)

        puts "Preenchendo unidade de Circunscrição da PF #{@unidade_circunscricao}" 

        unidade_circunscricao_select.select(@unidade_circunscricao)
        sleep(0.5)
        icone_adicionar_unidade.click
        imprimir_tela_radio4.click
        gerar_button4.click
        wait_until_load_carregar_invisible
        sleep(3)

    end

    def preencher_relatorio_quantitativo_imigrantes_registrados

        puts 'Preenchendo parâmetros de Relatório de quantitativo de imigrantes registrados'

        @periodo_inicial = '01/08/2019'
        @periodo_final = '14/08/2019'
        @pais_nacionalidade = "BOLIVIA"
        @unidade_circunscricao = 'DELEMIG/DREX/SR/PF/DF'

        periodo_final_input4.set(@periodo_final)
        periodo_inicial_input4.set(@periodo_final)
        pais_nacionalidade_select.select(@pais_nacionalidade)
        sleep(0.5)
        unidade_circunscricao_select2.select(@unidade_circunscricao)
        sleep(0.5)
        imprimir_tela_radio5.click
        gerar_button5.click
        wait_until_load_carregar_invisible
        sleep(3)

    end

    def preencher_relatorio_solicitacoes_indeferida_decisao

        puts 'Preenchendo parâmetros de Relatório de Solicitações indeferidas na decisão'

        @periodo_inicial = "01/08/2019"
        @periodo_final = "14/08/2019"
        @unidade_circunscricao = 'DELEMIG/DREX/SR/PF/DF'
    
        periodo_inicial_input5.set(@periodo_inicial)
        periodo_final_input5.set(@periodo_final)
        #@unidade_circunscricao_select3.select(@unidade_circunscricao)
        sleep(0.5)

        imprimir_tela_radio6.click
        gerar_button6.click
        wait_until_load_carregar_invisible
        sleep(3)

    end

    def preencher_relatorio_quantitativo_solicitacoes_cadastradas

        puts 'Preenchendo parâmetros de Relatório de quantitativo de solicitações cadastradas'

        @periodo_inicial = "01/08/2019"
        @periodo_final = "14/08/2019"
        @unidade_circunscricao = "DELEMIG/DREX/SR/PF/DF"

        periodo_inicial_input6.set(@periodo_inicial)
        periodo_final_input6.set(@periodo_final)
        unidade_circunscricao_select4.set(@unidade_circunscricao)

        imprimir_tela_radio7.click
        gerar_button7.click
        wait_until_load_carregar_invisible
        sleep(3)

    end

    def preencher_relatorio_quantitativo_erro_material

        puts 'Preenchendo pâmetros de Relatório de Quantitativo de Erro Material'

        @periodo_inicial = '01/08/2019'
        @periodo_final = '14_08_2019'
        @unidade_circunscricao = 'DELEMIG/DREX/SR/PF/DF'

        periodo_final_input7.set(@periodo_inicial)
        periodo_final_input7.set(@periodo_final)
        unidade_circunscricao_select5.set(@unidade_circunscricao)

        imprimir_tela_radio8.click
        gerar_button8.click
        wait_until_load_carregar_invisible
        sleep(3)
    
    end

    def preencher_relatorio_cedulas_nao_recebidas

        puts 'Preenchendo pâmetros de Relatório de Cédulas não Recebidas'

        @unidade_circunscricao = "DELEMIG/DREX/SR/PF/DF"
        
        unidade_circunscricao_select6.set(@unidade_circunscricao)
        radio_button_prazo_enviada.click
        gerar_button9.click
        wait_until_load_carregar_invisible
        sleep(15)
    
    end


    def preencher_relatorio_requerimentos_suspensos

        puts 'Preenchendo pâmetros de Relatório de Requerimentos Suspensos'

        @unidade_circunscricao = "DELEMIG/DREX/SR/PF/DF"
        
        unidade_circunscricao_select7.set(@unidade_circunscricao)
        radio_button_prazo_suspensao.click
        gerar_button10.click
        wait_until_load_carregar_invisible
        sleep(5)
    
    end


end