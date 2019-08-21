#language: pt
@demanda
@all_decisao
Funcionalidade: Decisão sobre o Requerimento

@indeferir_requerimento
Cenario: Indeferir requerimento 
    Quando solicitar a decisão do requerimento
    E indeferir o requerimento 
    Entao deve-se gerar o termo de indeferimento

@deferir_requerimento
Cenario: Deferir requerimento
    Quando solicitar a decisão do requerimento
    E anexar formulário
    Entao deve-se deferir o requerimento