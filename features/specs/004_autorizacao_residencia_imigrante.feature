#language: pt

@all_fc_autorizacao_residencia

Funcionalidade: Autorizacao Residencia Imigrante

@gerar_requerimento_autorizacao_residencia_imigrante
Cenario: Gerar Requerimento de Autorizacao Residencia do Imigrante
    Quando realizar a solicitacao de "Autorizacao_Residencia" de Imigrante na Internet
    E preencho Dados Pessoais do requerimento e clico em Proximo
    E preencho Dados do Registro do requerimento e clico em Proximo
    E preencho Dados do Endereco do requerimento e clico em Proximo
    E preencho Dados da Declaracao e clico em Salvar
    Entao visualizo a Impressao da Solicitacao referente

@verificar_protocolo_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Verificar Protocolo do Requerimento do Imigrante em Aberto na Internet
    Quando realizar a solicitacao de "Verificacao_de_Protocolo" de Imigrante na Internet
    E preencho os Dados do "Autorizacao_Residencia" do requerimento de "Verificacao_de_Protocolo" e clico em Verificar 
    Entao eu visualizo a Verificacao do Protocolo referente
    
@andamento_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Andamento do Requerimento do Imigrante em Aberto na Internet
    Quando realizar a solicitacao de "Andamento_do_Requerimento" de Imigrante na Internet
    E preencho os Dados do "Autorizacao_Residencia" do requerimento de "Andamento_do_Requerimento" e clico em Pesquisar 
    Entao eu visualizo o andamento do requerimento "Em Aberto"

@situacao_requerimento_autorizacao_residencia_imigrante_aberto
Cenario: Situacao do Requerimento do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Aberto"

@processar_atendimento_autorizacao_residencia_imigrante_aberto_teste
Cenario: Processar Atendimento do Imigrante em Aberto na Intranet
    Quando processar atendimento de "Autorizacao_Residencia" no menu "Processar_Atendimento" na Intranet
    E preencher as informacoes para Pesquisar Solicitacao de "Autorizacao_Residencia" na Situacao "Em Aberto"
    E preencho Dados Pessoais e clico em Proximo
    E preencho Dados do Registro e clico em Proximo
    E preencho Dados do Endereco e clico em Proximo
    E preencho Dados de Documentos e clico em Proximo
    E preencho Dados do Resultado da Pesquisa e clico em Proximo
    E visualizo Dados da Previa da Carteira e clico em Concluir
    Entao verifico o requerimento referente Em Processamento

@situacao_requerimento_autorizacao_residencia_imigrante_em_processamento
Cenario: Situacao do Requerimento do Imigrante em Aberto na Intranet
    Quando solicitar Situacao do Requerimento de "Autorizacao_Residencia" no menu "Situacao_do_Requerimento" na Intranet
    E preencho o numero do Requerimento para verificar a Situacao do Requerimento 
    Entao eu visualizo a situacao do Requerimento "Em Processamento"

