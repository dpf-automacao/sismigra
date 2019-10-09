#language: pt
#Esta funcionalidade depende da de requerimento de registro
@all_decisao
Funcionalidade: Decisão sobre o Requerimento

# INDEFERIR E DEFERIR REQUERIMENTOS DE REGISTRO

# @indeferir_e_deferir_requerimento_registro
# @indeferir_requerimento_registro
# Cenario: Indeferir requerimento de registro
#     Quando solicitar a decisão do requerimento
#     E indeferir o requerimento de "Registro"
#     Entao deve-se gerar o termo de indeferimento

# @indeferir_e_deferir_requerimento_registro
# @deferir_requerimento_registro
# Cenario: Deferir requerimento de registro
#     Quando solicitar a decisão do requerimento
#     E anexar formulário para requerimento de "Registro"
#     Entao deve-se deferir o requerimento

# # INDEFERIR E DEFERIR REQUERIMENTOS DE AUTORIZAÇÃO DE RESIDÊNCIA

# @indeferir_e_deferir_requerimento_autorizacao_residencia
# @indeferir_requerimento_autorizacao_residencia
# Cenario: Indeferir requerimento de Autorizacao de Residencia
#     Quando solicitar a decisão do requerimento
#     E indeferir o requerimento de "Autorizacao_residencia"
#     Entao deve-se gerar o termo de indeferimento

# @indeferir_e_deferir_requerimento_autorizacao_residencia
# @deferir_requerimento_autorizacao_residencia
# Cenario: Deferir requerimento de Autorizacao de Residencia
#     Quando solicitar a decisão do requerimento
#     E anexar formulário para requerimento de "Autorizacao_residencia"
#     Entao deve-se deferir o requerimento

# INDEFERIR E DEFERIR REQUERIMENTOS DE ALTERAÇÃO DE PRAZO

@indeferir_e_deferir_requerimento_alteracao_de_prazo
@indeferir_requerimento_alteracao_de_prazo
Cenario: Indeferir requerimento de Alteracao de Prazo
    Quando solicitar a decisão do requerimento
    E indeferir o requerimento de "Alteracao_de_prazo"
    Entao deve-se gerar o termo de indeferimento

@indeferir_e_deferir_requerimento_alteracao_de_prazo
@deferir_requerimento_alteracao_de_prazo
Cenario: Deferir requerimento de Alteracao de Prazo
    Quando solicitar a decisão do requerimento
    E anexar formulário para requerimento de "Alteracao_de_prazo"
    Entao deve-se deferir o requerimento

# INDEFERIR E DEFERIR REQUERIMENTOS DE RECADASTRAMENTO EXTEMPORANEO

@indeferir_e_deferir_requerimento_recadastramento_extemporaneo
@indeferir_requerimento_recadastramento_extemporaneo
Cenario: Indeferir requerimento de Recadastramento Extemporaneo
    Quando solicitar a decisão do requerimento
    E indeferir o requerimento de "Recadastramento_extemporaneo"
    Entao deve-se gerar o termo de indeferimento

@indeferir_e_deferir_requerimento_recadastramento_extemporaneo
@deferir_requerimento_alteracao_recadastramento_extemporaneo
Cenario: Deferir requerimento de Recadastramento Extemporaneo
    Quando solicitar a decisão do requerimento
    E anexar formulário para requerimento de "Recadastramento_extemporaneo"
    Entao deve-se deferir o requerimento

# INDEFERIR E DEFERIR REQUERIMENTOS DE SUBSTITUICAO DE CRNM

@indeferir_e_deferir_requerimento_substituicao_de_crnm
@indeferir_requerimento_substituicao_de_crnm
Cenario: Indeferir requerimento de Substituicao de CRNM
    Quando solicitar a decisão do requerimento
    E indeferir o requerimento de "Substituicao_de_crnm"
    Entao deve-se gerar o termo de indeferimento

@indeferir_e_deferir_requerimento_substituicao_de_crnm
@deferir_requerimento_substituicao_de_crnm
Cenario: Deferir requerimento de Substituicao de CRNM
    Quando solicitar a decisão do requerimento
    E anexar formulário para requerimento de "Substituicao_de_crnm"
    Entao deve-se deferir o requerimento

# INDEFERIR E DEFERIR REQUERIMENTOS DE SEGUNDA VIA CRNM

@indeferir_e_deferir_requerimento_segunda_via_de_crnm
@indeferir_requerimento_segunda_via_de_crnm
Cenario: Indeferir requerimento de Segunda Via CRNM
    Quando solicitar a decisão do requerimento
    E indeferir o requerimento de "Segunda_via_crnm"
    Entao deve-se gerar o termo de indeferimento

@indeferir_e_deferir_requerimento_segunda_via_de_crnm
@deferir_requerimento_segunda_via_de_crnm
Cenario: Deferir requerimento de Segunda Via CRNM
    Quando solicitar a decisão do requerimento
    E anexar formulário para requerimento de "Segunda_via_crnm"
    Entao deve-se deferir o requerimento