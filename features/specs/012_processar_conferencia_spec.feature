#language: pt

#Esta funcionalidade depende da feature 011_decisao_requerimento
@all_processar_conferncia
Funcionalidade: Processar Conferencia

    @devolver_para_unidade_local
    Cenario: Processar conferência - Devolver para unidade local
        Quando solicitar processamento de conferencia
        E registrar conferencia
        Entao deve-se devolver conferencia para unidade local

    @tratar_pendencia_devolvida
    Cenario: Tratar pendência devolvida
        Quando solicitar tratamento de pendencias devolvidas
        E tratar o processo devolvido
        Entao deve-se deferir a pendencia devolvida

    @dados_conferidos_sucesso
    Cenario: Processar conferencia - Dados conferidos com sucesso
        Quando solicitar processamento de conferencia
        E registrar conferencia
        Entao deve-se processar conferencia com sucesso