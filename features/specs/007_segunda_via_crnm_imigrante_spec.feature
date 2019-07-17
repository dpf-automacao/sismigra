#language: pt

@all_fc_segunda_via_crnm

Funcionalidade: Segunda via CRNM Imigrante

@gerar_requerimento_segunda_via_crnm_imigrante_aberto
Cenario: Gerar Requerimento de Segunda via CRNM do Imigrante
    Quando realizar o procedimento de "Segunda_via_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@verificar_protocolo_segunda_via_crnm_imigrante_aberto
Cenario: Verificar Protocolo de Segunda via CRNM do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Segunda_via_CRNM" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente
    
@andamento_requerimento_segunda_via_crnm_imigrante_aberto
Cenario: Andamento do Requerimento de Segunda via CRNM do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Segunda_via_CRNM" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@situacao_requerimento_segunda_via_crnm_imigrante_aberto
Cenario: Situacao do Requerimento de Segunda via CRNM do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Segunda_via_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@processar_atendimento_segunda_via_crnm_imigrante_aberto
Cenario: Processar Atendimento de Segunda via CRNM do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Segunda_via_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Segunda_via_CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@situacao_requerimento_segunda_via_crnm_imigrante_em_processamento
Cenario: Situacao do Requerimento de Segunda via CRNM do Imigrante em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Segunda_via_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE SEGUNDA VIA DE CRNM EM SITUACAO ANALISE

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@gerar_requerimento_segunda_via_crnm_imigrante_em_analise
Cenario: Gerar Requerimento de Segunda via CRNM do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Segunda_via_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    E processar atendimento de "Segunda_via_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Segunda_via_CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
    E processar atendimento de "Segunda_via_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Segunda_via_CRNM" na Situacao "Em análise"
    Entao verifico o requerimento referente "Em análise"

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@verificar_protocolo_segunda_via_crnm_extemporaneo_imigrante_em_analise
Cenario: Verificar Protocolo de Segunda via CRNM do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Segunda_via_CRNM" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@andamento_requerimento_segunda_via_crnm_imigrante_em_analise
Cenario: Andamento do Requerimento de Segunda via CRNM do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Segunda_via_CRNM" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em análise"

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@situacao_requerimento_segunda_via_crnm_imigrante_em_analise
Cenario: Situacao do Requerimento de Segunda via CRNM do Imigrante em Analise na Intranet
    Quando solicitar Situacao do Requerimento de "Segunda_via_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em análise"

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@processar_atendimento_segunda_via_crnm_imigrante_analise
Cenario: Processar Atendimento de Segunda via CRNM do Imigrante em Analise na Intranet
    Quando processar atendimento de "Segunda_via_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Segunda_via_CRNM" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_segunda_via_crnm_imigrante_analise
@situacao_requerimento_segunda_via_crnm_imigrante_em_processamento
Cenario: Situacao do Requerimento de Segunda via CRNM do Imigrante em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Segunda_via_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

