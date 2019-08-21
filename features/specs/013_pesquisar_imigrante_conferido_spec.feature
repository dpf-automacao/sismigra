#language: pt

#Esta funcionalidade depende da feature 012_processar_conferencia
@all_consultar_imigrante_conferido
Funcionalidade: Consultar imigrante conferido com sucesso

    @detalhar_processo_imigrante
    Cenario: Detalhar processo do imigrante conferido com sucesso
        Quando solicitar a consulta do imigrante conferido
        E detalhar processo do imigrante
        Entao deve-se visualizar detalhamento do processo do imigrante conferido

    @renovar_protocolo_imigrante
    Cenario: Renovar protocolo do imigrante conferido com sucesso
        Quando solicitar a consulta do imigrante conferido
        E clicar no icone para renovar protocolo
        Entao deve-se visualizar protocolo renovado

    @reimprimir_protocolo_imigrante
    Cenario: Reimprimir protocolo do imigrante conferido com sucesso
        Quando solicitar a consulta do imigrante conferido
        E clicar no icone para reimprimir protocolo atual
        Entao deve-se visualizar protocolo atual