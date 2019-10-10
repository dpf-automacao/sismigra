#language: pt

@all_fc_substituicao_crnm

Funcionalidade: Substituicao CRNM Imigrante

@procedimentos_requerimento_substituicao_crnm_imigrante_aberto
@gerar_requerimento_substituicao_crnm_imigrante_aberto
Cenario: Gerar Requerimento de Substituicao CRNM do Imigrante
    Quando realizar o procedimento de "Substituicao_de_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_substituicao_crnm_imigrante_aberto
@verificar_protocolo_substituicao_crnm_imigrante_aberto
Cenario: Verificar Protocolo de Substituicao CRNM do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente
    
@procedimentos_requerimento_substituicao_crnm_imigrante_aberto    
@andamento_requerimento_substituicao_crnm_imigrante_aberto
Cenario: Andamento do Requerimento de Substituicao CRNM do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@procedimentos_requerimento_substituicao_crnm_imigrante_aberto
@situacao_requerimento_substituicao_crnm_imigrante_aberto
Cenario: Situacao do Requerimento de Substituicao CRNM do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@procedimentos_requerimento_substituicao_crnm_imigrante_aberto
@processar_atendimento_substituicao_crnm_imigrante_aberto
Cenario: Processar Atendimento de Substituicao CRNM do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Substituicao_de_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Substituicao_de_CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"
    
@procedimentos_requerimento_substituicao_crnm_imigrante_aberto
@situacao_requerimento_substituicao_crnm_imigrante_que_estava_em_aberto_em_processamento
Cenario: Situacao do Requerimento de Substituicao CRMM do Imigrante que estava em aberto em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE SUBSTITUICAO DE CRNM EM SITUACAO ANALISE

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@gerar_requerimento_substituicao_crnm_imigrante_em_analise
Cenario: Gerar Requerimento de Substituicao CRNM do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Substituicao_de_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@processar_atendimento_substituicao_crnm_imigrante_analise
Cenario: Processar Atendimento de Substituicao CRNM do Imigrante em Analise na Intranet
    Quando processar atendimento de "Substituicao_de_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Substituicao_de_CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
    Entao verifico o requerimento referente "Em análise"

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@verificar_protocolo_substituicao_crnm_extemporaneo_imigrante_em_analise
Cenario: Verificar Protocolo de Substituicao CRNM do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@andamento_requerimento_substituicao_crnm_imigrante_em_analise
Cenario: Andamento do Requerimento de Substituicao CRNM do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em análise"

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@situacao_requerimento_substituicao_crnm_imigrante_em_analise
Cenario: Situacao do Requerimento de Substituicao CRNM do Imigrante em Analise na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em análise"

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@processar_atendimento_substituicao_crnm_imigrante_analise
Cenario: Processar Atendimento de Substituicao CRNM do Imigrante em Analise na Intranet
    Quando processar atendimento de "Substituicao_de_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Substituicao_de_CRNM" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_substituicao_crnm_imigrante_analise
@situacao_requerimento_substituicao_crnm_imigrante_que_estava_em_analise_em_processamento
Cenario: Situacao do Requerimento de Substituicao CRMM do Imigrante que estava em analise em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE SUBSTITUICAO DE CRNM EM SITUACAO EM SUSPENSO

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@gerar_requerimento_substituicao_crnm_imigrante_em_suspenso
Cenario: Gerar Requerimento de Substituicao CRMM do Imigrante para situacao em Suspenso
    Quando realizar o procedimento de "Substituicao_de_CRNM" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@processar_atendimento_substituicao_crnm_imigrante_suspenso
Cenario: Processar Atendimento de Substituicao CRNM do Imigrante em Suspender na Intranet
    Quando processar atendimento de "Substituicao_de_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Substituicao_de_CRNM" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Suspender"
    Entao verifico o requerimento referente "Suspenso"

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@verificar_protocolo_requerimento_substituicao_crnm_imigrante_em_suspenso
Cenario: Verificar Protocolo de Substituicao CRMM do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@andamento_requerimento_substituicao_crnm_imigrante_em_suspenso
Cenario: Andamento do Requerimento de Substituicao CRMM do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Substituicao_de_CRNM" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar
    Entao eu visualizo o andamento do requerimento "Suspenso"

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@situacao_requerimento_substituicao_crnm_imigrante_em_suspenso
Cenario: Situacao do Requerimento de Substituicao CRMM do Imigrante em Suspenso na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Suspenso"

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@processar_atendimento_substituicao_crnm_imigrante_suspenso
Cenario: Processar Atendimento de Substituicao CRMM do Imigrante em Suspenso na Intranet
    Quando processar atendimento de "Substituicao_de_CRNM" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Substituicao_de_CRNM" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_substituicao_crnm_imigrante_suspenso
@situacao_requerimento_substituicao_crnm_imigrante_que_estava_em_suspenso_em_processamento
Cenario: Situacao do Requerimento de Substituicao CRMM do Imigrante que estava em suspenso em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Substituicao_de_CRNM" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"