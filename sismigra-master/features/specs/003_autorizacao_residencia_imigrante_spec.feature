#language: pt

@all_fc_autorizacao_residencia

Funcionalidade: Autorizacao Residencia Imigrante

# PROCEDIMENTOS DE REQUERIMENTO DE AUTORIZACAO DE RESIDENCIA EM SITUACAO ABERTO

@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@gerar_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Gerar Requerimento de Autorizacao Residencia do Imigrante
    Quando realizar o procedimento de "Autorizacao_Residencia" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@verificar_protocolo_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Verificar Protocolo de Autorizacao de Residencia do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Autorizacao_Residencia" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente
    
@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@andamento_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Andamento do Requerimento de Autorizacao de Residencia do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Autorizacao_Residencia" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@situacao_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Situacao do Requerimento de Autorizacao de Residencia do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@processar_atendimento_autorizacao_residencia_imigrante_aberto
Cenario: Processar Atendimento de Autorizacao de Residencia do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Autorizacao_Residencia" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Autorizacao_Residencia" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_autorizacao_residencia_imigrante_aberto
@situacao_requerimento_autorizacao_residencia_imigrante_que_estava_em_aberto_em_processamento
Cenario: Situacao do Requerimento de Autorizacao de Residencia do Imigrante que estava em aberto em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE AUTORIZACAO DE RESIDENCIA EM SITUACAO ANALISE

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise
@gerar_requerimento_autorizacao_residencia_imigrante_em_analise
Cenario: Gerar Requerimento de Autorizacao de Residencia do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Autorizacao_Residencia" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    E processar atendimento de "Autorizacao_Residencia" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Autorizacao_Residencia" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
    E processar atendimento de "Autorizacao_Residencia" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Autorizacao_Residencia" na Situacao "Em análise"
    Entao verifico o requerimento referente "Em análise"

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise
@verificar_protocolo_requerimento_autorizacao_residencia_imigrante_em_analise
Cenario: Verificar Protocolo de Autorizacao de Residencia do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Autorizacao_Residencia" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise 
@andamento_requerimento_autorizacao_residencia_imigrante_em_analise
Cenario: Andamento do Requerimento de Autorizacao de Residencia do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Autorizacao_Residencia" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em análise"

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise
@situacao_requerimento_autorizacao_residencia_imigrante_em_analise
Cenario: Situacao do Requerimento de Autorizacao de Residencia do Imigrante em Analise na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em análise"

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise
@processar_atendimento_autorizacao_residencia_imigrante_analise
Cenario: Processar Atendimento de Autorizacao de Residencia do Imigrante em Analise na Intranet
    Quando processar atendimento de "Autorizacao_Residencia" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Autorizacao_Residencia" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_autorizacao_residencia_imigrante_analise
@situacao_requerimento_autorizacao_residencia_imigrante_que_estava_em_analise_em_processamento
Cenario: Situacao do Requerimento de Autorizacao de Residencia do Imigrante que estava em analise em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"




