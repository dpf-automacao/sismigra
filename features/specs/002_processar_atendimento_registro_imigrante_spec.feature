#language: pt

@all_fc_registro

Funcionalidade: Registro Imigrante

# PROCEDIMENTOS DE REQUERIMENTO DE REGISTRO EM SITUACAO ABERTO

@procedimentos_requerimento_registro_imigrante_aberto
@gerar_requerimento_registro_imigrante_para_alteracao_de_tipo_aberto
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

# # ALTERAR TIPO DE SOLICITACOES DE REGISTRO EM ABERTO

@procedimentos_requerimento_registro_imigrante_aberto
@alterar_tipos_de_solicitacoes_de_registro_em_aberto
Cenario: Alterar Tipos de Solicitacoes de Registro do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Aberto"
    E clico para Alterar o Tipo de Solicitacao de "Registro"

# # PROCESSAR ATENDIMENTO DE REGISTRO EM ABERTO

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
    E seleciono o tipo de dados "Sem Periferico" e preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_registro_imigrante_aberto
@situacao_requerimento_registro_imigrante_que_estava_em_aberto_em_processamento
Cenario: Situacao do Requerimento de Registro do Imigrante que estava em aberto em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE REGISTRO EM SITUACAO EM ANALISE

@procedimentos_requerimento_registro_imigrante_analise
@gerar_requerimento_registro_imigrante_em_analise
Cenario: Gerar Requerimento de Registro do Imigrante para situacao em Analise
    Quando realizar o procedimento de "Registro" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_registro_imigrante_analise
@mudar_requerimento_de_registro_para_situacao_em_analise
Cenario: Mudar Situacao do Requerimento de Registro do Imigrante para Analise na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Aberto"
    E seleciono o tipo de dados "Sem Periferico" e preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E clico no icone Home para abortar a solicitacao e pesquiso o requerimento novamente
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

# ALTERAR TIPO DE SOLICITACOES DE REGISTRO EM ANALISE

@procedimentos_requerimento_registro_imigrante_analise
@alterar_tipos_de_solicitacoes_de_registro_em_analise
Cenario: Alterar Tipos de Solicitacoes de Registro do Imigrante em Analise na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em análise"
    E clico para Alterar o Tipo de Solicitacao de "Registro"

# PROCESSAR ATENDIMENTO DE REGISTRO EM ANALISE

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
    E seleciono o tipo de dados "Sem Periferico" e preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_registro_imigrante_analise
@situacao_requerimento_registro_imigrante_que_estava_em_analise_em_processamento
Cenario: Situacao do Requerimento de Registro do Imigrante que estava em analise em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

# PROCEDIMENTOS DE REQUERIMENTO DE REGISTRO EM SITUACAO EM SUSPENSO

@procedimentos_requerimento_registro_imigrante_suspenso
@gerar_requerimento_registro_imigrante_em_suspenso
Cenario: Gerar Requerimento de Registro do Imigrante para situacao em Suspenso
    Quando realizar o procedimento de "Registro" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@procedimentos_requerimento_registro_imigrante_suspenso
@mudar_requerimento_de_registro_para_situacao_suspenso
Cenario: Mudar Situacao do Requerimento de Registro do Imigrante para Suspenso na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Em Aberto"
    E seleciono o tipo de dados "Sem Periferico" e preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Suspender"
    Entao verifico o requerimento referente "Suspenso"

@procedimentos_requerimento_registro_imigrante_suspenso
@verificar_protocolo_requerimento_registro_imigrante_em_suspenso
Cenario: Verificar Protocolo de Registro do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Verificacao_de_Protocolo" e clico em Verificar
    Entao eu visualizo a Verificacao do Protocolo referente

@procedimentos_requerimento_registro_imigrante_suspenso
@andamento_requerimento_registro_imigrante_em_suspenso
Cenario: Andamento do Requerimento de Registro do Imigrante em Suspenso na Internet
    Quando realizar o procedimento de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados de "Registro" do requerimento para "Andamento_do_Requerimento" e clico em Pesquisar
    Entao eu visualizo o andamento do requerimento "Suspenso"

# ALTERAR TIPO DE SOLICITACOES DE REGISTRO EM SUSPENSO

@procedimentos_requerimento_registro_imigrante_suspenso
@alterar_tipos_de_solicitacoes_de_registro_em_suspenso
Cenario: Alterar Tipos de Solicitacoes de Registro do Imigrante em Suspenso na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Suspenso"
    E clico para Alterar o Tipo de Solicitacao de "Registro"

# PROCESSAR ATENDIMENTO DE REGISTRO EM SUSPENSO

@procedimentos_requerimento_registro_imigrante_suspenso
@situacao_requerimento_registro_imigrante_em_suspenso
Cenario: Situacao do Requerimento de Registro do Imigrante em Suspenso na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Suspenso"

@procedimentos_requerimento_registro_imigrante_suspenso
@processar_atendimento_registro_imigrante_suspenso
Cenario: Processar Atendimento de Registro do Imigrante em Suspenso na Intranet
    Quando processar atendimento de "Registro" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Registro" na Situacao "Suspenso"
    E seleciono o tipo de dados "Sem Periferico" e preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em "Concluir"
    Entao verifico o requerimento referente "Em Processamento"

@procedimentos_requerimento_registro_imigrante_suspenso
@situacao_requerimento_registro_imigrante_que_estava_em_suspenso_em_processamento
Cenario: Situacao do Requerimento de Registro do Imigrante que estava em suspenso em Processamento na Intranet
    Quando solicitar Situacao do Requerimento de "Registro" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento
    Entao eu visualizo a situacao do Requerimento "Em Processamento"


