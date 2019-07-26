#language: pt

@all_fc_alteracao_endereco

Funcionalidade: Alteracao Endereco Imigrante

@gerar_requerimento_alteracao_endereco_imigrante_aberto
Cenario: Gerar Requerimento de Alteracao Endereco do Imigrante
    Quando realizar o procedimento de "Alteracao_Endereco" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

# VERIFICAR AMPARO 211 ORG.JBOSS SEGUNDA VIA CRNM
# OBSERVACOES: ESTA DANDO ERRO INESPERADO EM ANEXAR ARQUIVOS DE REQUERIMENTOS NOVOS POREM NAO IMPEDITIVO
# AO SE SELECIONAR DOCUMENTOS NA ABA DOCUMENTOS NO PROCESSAR ATENDIMENTO NAO ESTA SENDO POSSIVEL REALIZAR SUA EXCLUSAO

# HTTP ERRO

@verificar_protocolo_alteracao_endereco_imigrante_aberto
Cenario: Verificar Protocolo de Alteracao Endereco do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Alteracao_Endereco" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente

# NULL POINTER

# @andamento_requerimento_alteracao_endereco_imigrante_aberto
# Cenario: Andamento do Requerimento de Alteracao Endereco do Imigrante em Aberto na Internet
#     Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
#     E preencho os Dados de "Alteracao_Endereco" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
#     Entao eu visualizo o andamento do requerimento "Em Aberto"

@situacao_requerimento_alteracao_endereco_imigrante_aberto
Cenario: Situacao do Requerimento de Alteracao Endereco do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Alteracao_Endereco" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@deferir_alteracao_endereco_imigrante_aberto
Cenario: Deferir Alteracao de Endereco do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Alteracao_Endereco" no menu "Alteracao_Endereco" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Alteracao_Endereco" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Endereco e clico Deferir e Encerro o deferimento
    Entao eu realizo o deferimento de alteracao de endereco com sucesso

@situacao_requerimento_alteracao_endereco_imigrante_que_estava_em_aberto_em_processamento
Cenario: Situacao do Requerimento de Alteracao Endereco do Imigrante Deferido na Intranet
    Quando solicitar Situacao do Requerimento de "Alteracao_Endereco" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"