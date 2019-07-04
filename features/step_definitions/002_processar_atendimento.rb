Quando("for processar um atendimento de Registro em Aberto") do

    @processar_atendimento = ProcessarAtendimentoPage.new
    @processar_atendimento.acessar_processar_atendimento
    @processar_atendimento.pesquisar_solicitacao("Registro", "Em Aberto")

end

Quando("preencho Dados Pessoais e clico em Proximo") do

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