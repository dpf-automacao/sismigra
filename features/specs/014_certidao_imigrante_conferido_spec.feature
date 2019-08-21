#language: pt

#Esta funcionalidade depende da feature 013
@demanda
@all_emitir_certidao_conferido
Funcionalidade: Emitir certidão emigrante conferido

    @emitir_certidao_registro_emigrante_conferido
    Cenario: Emitir certidão de registro do imigrante conferido com sucesso
        Quando solicitar a emissão da certidão do imigrante conferido
        E clicar no icone para imprimir certidão de registro
        Entao deve-se visualizar certidão do imigrante
    
    @emitir_certidao_historico_emigrante_conferido
    Cenario: Emitir certidão de historico de solicitações do imigrante conferido com sucesso
        Quando solicitar a emissão da certidão do imigrante conferido
        E clicar no icone para imprimir certidão de historico de solicitações
        Entao deve-se visualizar certidão do imigrante