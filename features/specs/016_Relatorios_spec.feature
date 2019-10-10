#language:pt

@all_relatorios
Funcionalidade: Gerar Relatorios do imigrante

@relatorio_auditoria
Cenario: Gerar Relatorio de Auditoria
    Quando realizar o procedimento de consultar relatorio "Auditoria"
    E preencho Dados de Contulta do relatorio e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_historico_imigrante
Cenario: Gerar Relatorio de Historico de imigrante
    Quando realizar o procedimento de consultar relatorio "Historico de imigrante"
    E preencho Dados de Contulta do requerimento e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_quantitativo_erro_rnm
Cenario: Gerar Relatorio de Quantitativo de Erro no Número do RNM
    Quando realizar o procedimento de consultar relatorio "Quantitativo de Erro no Número do RNM"
    E preencho Dados de Contulta do relatorio de quantitativo e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_quantitativo_cedulas
Cenario: Gerar Relatorio de Quantitativo de Erro no Número do RNM
    Quando realizar o procedimento de consultar relatorio "Quantitativo de Cédulas"
    E preencho Dados de Contulta do relatorio de quantitativo de cedulas e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_quantitativo_imigrantes_registrados
Cenario: Gerar Relatorio de Quantitativo de Erro no Número do RNM
    Quando realizar o procedimento de consultar relatorio "Quantitativo de imigrantes registrados"
    E preencho Dados de Contulta do relatorio de quantitativo de imigrantes e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_solicitacoes_indeferidas_decisao
Cenario: Gerar Relatorio de Solicitações Indeferidas na Decisão
    Quando realizar o procedimento de consultar relatorio "Solicitações Indeferidas na Decisão"
    E preencho Dados de Contulta do relatorio de Solicitações indeferidas da decisão e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_quantitativo_solicitacoes_cadastradas
Cenario: Gerar Relatorio de Quantitativo de Solicitações Cadastradas
    Quando realizar o procedimento de consultar relatorio "Quantitativo de Solicitação Cadastradas"
    E preencho Dados de Contulta do relatorio de Quantitativo de Solicitações cadastradas e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_quantitativo_erro_material
Cenario: Gerar Relatorio de Quantitativo de Erro Material
    Quando realizar o procedimento de consultar relatorio "Quantitativo de Erro Material"
    E preencho Dados de Contulta do relatorio de Quantitativo de Erro Material e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_cedulas_nao_recebidas
Cenario: Gerar Relatorio de Quantitativo de Cedulas nao Recebidas
    Quando realizar o procedimento de consultar relatorio "Cédulas não recebidas"
    E preencho Dados de Contulta do relatorio de Cédulas não recebidas e clico em Gerar
    Entao visualizo a Impressao do relatorio referente

@relatorio_requerimentos_suspensos
Cenario: Gerar Relatorio de Quantitativo de Requerimento Suspensos
    Quando realizar o procedimento de consultar relatorio "Requerimentos Suspensos"
    E preencho Dados de Contulta do relatorio de Requerimentos Suspensos e clico em Gerar
    Entao visualizo a Impressao do relatorio referente


