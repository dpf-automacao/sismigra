 #language: pt

@all_fc_emitir

Funcionalidade: Emitir Certidão

  @emitir_certidao_registro
  Cenario: Emitir Certidão de registro
    Quando selecionar o imigrante de RNM "F028776Q"
    E solicitar a "Certidão de Registro."
    Entao deve ser emitido a certidao

  @emitir_certidao_historico_solicitacao
  Cenario: Emitir Certidão de historico de solicitações
    Quando selecionar o imigrante de RNM "F028776Q"
    E solicitar a "Certidão de Histórico de Solicitações."
    Entao deve ser emitido a certidao