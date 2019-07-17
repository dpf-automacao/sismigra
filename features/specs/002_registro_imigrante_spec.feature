#language: pt

@all_fc_registro

Funcionalidade: Registro Imigrante

# PROCEDIMENTOS DE REQUERIMENTO DE REGISTRO EM SITUACAO ABERTO

@procedimentos_requerimento_registro_imigrante_aberto
@gerar_requerimento_registro_imigrante_aberto
Cenario: Gerar Requerimento de Registro do Imigrante
    Quando realizar o procedimento de "Registro" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_registro_imigrante_aberto
@verificar_protocolo_requerimento_registro_imigrante_aberto
Cenario: Verificar Protocolo de Registro do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_registro_imigrante_aberto
@andamento_requerimento_registro_imigrante_aberto
Cenario: Andamento do Requerimento de Registro do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@procedimentos_requerimento_registro_imigrante_aberto
@situacao_requerimento_registro_imigrante_aberto
Cenario: Situacao do Requerimento de Registro do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@procedimentos_requerimento_registro_imigrante_aberto
@processar_atendimento_registro_imigrante_aberto
Cenario: Processar Atendimento de Registro do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_registro_imigrante_aberto
@situacao_requerimento_registro_imigrante_em_processamento
Cenario: Situacao do Requerimento de Registro do Imigrante em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# @procedimentos_requerimento_registro_imigrante_aberto
# @deferir_registro_imigrante
# Cenário: Deferir Requerimento de Registro do Imigrante
#     Quando solicitar Deferir o requerimento de "Registro" no menu "Decisao"
#     E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Processamento"
#     E adiciono formulários ao requerimento
#     E solicito deferir o requerimento
#     E confirmo o deferimento do processo

# PROCEDIMENTOS DE REQUERIMENTO DE REGISTRO EM SITUACAO EM ANALISE

@procedimentos_requerimento_registro_imigrante_analise
@gerar_requerimento_registro_imigrante_em_analise
Cenario: Gerar Requerimento de Registro do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Registro" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    E processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
    E processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em análise"
    Entao verifico o requerimento referente "Em análise"

@procedimentos_requerimento_registro_imigrante_analise
@verificar_protocolo_requerimento_registro_imigrante_em_analise
Cenario: Verificar Protocolo de Registro do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_registro_imigrante_analise
@andamento_requerimento_registro_imigrante_em_analise
Cenario: Andamento do Requerimento de Registro do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar
    Entao eu visualizo o andamento do requerimento "Em análise"

@procedimentos_requerimento_registro_imigrante_analise
@situacao_requerimento_registro_imigrante_em_analise
Cenario: Situacao do Requerimento de Registro do Imigrante em Analise na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em análise"

@procedimentos_requerimento_registro_imigrante_analise
@processar_atendimento_registro_imigrante_analise
Cenario: Processar Atendimento de Registro do Imigrante em Analise na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_registro_imigrante_analise
@situacao_requerimento_registro_imigrante_em_processamento
Cenario: Situacao do Requerimento de Registro do Imigrante em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"


