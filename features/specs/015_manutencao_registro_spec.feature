#language: pt

#Esta funcionalidade depende da feature 013
@all_manutencao_registro
Funcionalidade: Manutenção do registro

    @inativar_registro_imigrante_conferido
    Cenario: Inativar registro do imigrante conferido
        Quando solicitar a manutenção do registro do imigrante
        E clicar no icone para detalhar imigrante
        E inativar registro do imigrante
        Entao deve-se visualizar mensagem de sucesso
    
    @imprimir_requerimento_apos_inativar
    Cenario: Imprimir requerimento após inativar
        Quando solicitar a manutenção do registro do imigrante
        E clicar no icone imprimir protocolo atual
        Entao deve-se visualizar a impressao