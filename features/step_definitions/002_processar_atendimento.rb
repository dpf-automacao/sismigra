Quando("for processar um atendimento de Registro em Aberto") do

    @processar_atendimento = ProcessarAtendimentoPage.new
    @processar_atendimento.acessar_processar_atendimento
    @processar_atendimento.pesquisar_solicitacao("Registro", "Em Aberto")

end

Quando("preencho Dados Pessoais e clico em Proximo") do

    @processar_atendimento.preencher_dados_pessoais("36 - ART")

end

Quando("preencho Dados do Registro e clico em Proximo") do

    @processar_atendimento.preencher_dados_do_registro("Acre", "Acrelândia")

end