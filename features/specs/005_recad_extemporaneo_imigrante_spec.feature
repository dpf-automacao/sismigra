#language: pt

@all_fc_recad_extemporaneo

Funcionalidade: Recadastramento Extemporaneo Imigrante

@gerar_requerimento_recad_extemporaneo_imigrante_aberto
Cenario: Gerar Requerimento de Recadastramento Extemporaneo do Imigrante
    Quando realizar o procedimento de "Recadastramento_Extemporaneo" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@verificar_protocolo_recad_extemporaneo_imigrante_aberto
Cenario: Verificar Protocolo de Recadastramento Extemporaneo do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente
    
@andamento_requerimento_recad_extemporaneo_imigrante_aberto
Cenario: Andamento do Requerimento de Recadastramento Extemporaneo do Imigrante em Aberto na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@situacao_requerimento_recad_extemporaneo_imigrante_aberto
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@processar_atendimento_recad_extemporaneo_imigrante_aberto
Cenario: Processar Atendimento de Recadastramento Extemporaneo do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@situacao_requerimento_recad_extemporaneo_imigrante_que_estava_em_aberto_em_processamento
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante que estava em aberto em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE RECADASTRAMENTO EXTEMPORANEO EM SITUACAO ANALISE

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@gerar_requerimento_recad_extemporaneo_imigrante_em_analise
Cenario: Gerar Requerimento de Recadastramento Extemporaneo do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Recadastramento_Extemporaneo" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    E processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
    E processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Em análise"
    Entao verifico o requerimento referente "Em análise"

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@verificar_protocolo_requerimento_recad_extemporaneo_imigrante_em_analise
Cenario: Verificar Protocolo de Recadastramento Extemporaneo do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@andamento_requerimento_recad_extemporaneo_imigrante_em_analise
Cenario: Andamento do Requerimento de Recadastramento Extemporaneo do Imigrante em Analise na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em análise"

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@situacao_requerimento_recad_extemporaneo_imigrante_em_analise
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante em Analise na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em análise"

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@processar_atendimento_recad_extemporaneo_imigrante_analise
Cenario: Processar Atendimento de Recadastramento Extemporaneo do Imigrante em Analise na Intranet
    Quando processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Em análise"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_recad_extemporaneo_imigrante_analise
@situacao_requerimento_recad_extemporaneo_imigrante_que_estava_em_analise_em_processamento
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante que estava em analise em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE RECADASTRAMENTO EXTEMPORANEO EM SITUACAO EM SUSPENSO

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@gerar_requerimento_recad_extemporaneo_imigrante_em_suspenso
Cenario: Gerar Requerimento de Recadastramento Extemporaneo do Imigrante para situacao em Suspenso
    Quando realizar o procedimento de "Recadastramento_Extemporaneo" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    E processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Suspender"
    E processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Suspenso"
    Entao verifico o requerimento referente "Suspenso"

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@verificar_protocolo_requerimento_recad_extemporaneo_imigrante_em_suspenso
Cenario: Verificar Protocolo de Recadastramento Extemporaneo do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@andamento_requerimento_recad_extemporaneo_imigrante_em_suspenso
Cenario: Andamento do Requerimento de Recadastramento Extemporaneo do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Recadastramento_Extemporaneo" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar
    Entao eu visualizo o andamento do requerimento "Suspenso"

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@situacao_requerimento_recad_extemporaneo_imigrante_em_suspenso
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante em Suspenso na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Suspenso"

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@processar_atendimento_recad_extemporaneo_imigrante_suspenso
Cenario: Processar Atendimento de Recadastramento Extemporaneo do Imigrante em Suspenso na Intranet
    Quando processar atendimento de "Recadastramento_Extemporaneo" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Recadastramento_Extemporaneo" na Situacao "Suspenso"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_recad_extemporaneo_imigrante_suspenso
@situacao_requerimento_recad_extemporaneo_imigrante_que_estava_em_suspenso_em_processamento
Cenario: Situacao do Requerimento de Recadastramento Extemporaneo do Imigrante que estava em suspenso em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Recadastramento_Extemporaneo" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

