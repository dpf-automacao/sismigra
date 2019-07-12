Quando("for processar um atendimento do Tipo de solicitacao {string} na Situacao {string}") do |tipo_solicitacao, situacao_requerimento|


    
end

Quando("preencho Dados Pessoais e clico em Proximo") do

    @processar_atendimento = SolicitacoesIntranetPage.new
    @processar_atendimento.preencher_dados_pessoais

end

Quando("preencho Dados do Registro e clico em Proximo") do

    @processar_atendimento.preencher_dados_do_registro

end

Quando("preencho Dados do Endereco e clico em Proximo") do

    @processar_atendimento.preencher_endereco

end

Quando("preencho Dados de Documentos e clico em Proximo") do

    @processar_atendimento.preencher_documentos

end

Quando("preencho Dados do Resultado da Pesquisa e clico em Proximo") do

    @processar_atendimento.preencher_resultado_da_pesquisa

end

Quando("visualizo Dados da Previa da Carteira e clico em Concluir") do

    @processar_atendimento.visualizar_previa_carteira

end

Entao("verifico o requerimento referente Em Processamento") do



end