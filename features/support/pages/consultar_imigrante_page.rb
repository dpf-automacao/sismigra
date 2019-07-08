class ConsultarImigrantePage < PageHelper

  element :rnm_input, :xpath, '//*[text()[contains(.,"RNM:")]]/../input'
  element :data_nasc_input, '#formulario-manter-estrangeiro\:calDtNascInputDate'
  element :resultado_pesquisa, 'tbody[id*="dataModelEstrangeiro"] tr'

  element :aba_dados_pessoais, 'td[id*="DadosPessoais_lbl"].rich-tab-active'
  element :aba_dados_registro, 'td[id*="DadosRegistro_lbl"].rich-tab-active'
  element :aba_endereco, 'td[id*="Endereco_lbl"].rich-tab-active'
  element :aba_historico, 'td[id*="Historico"].rich-tab-active'

  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :btn_detalhar, 'input.btnDetalhar'
  element :btn_reimprimir_protocolo_atual, 'a[title="Reimprimir Protocolo Atual"]'
  element :btn_proximo, 'input[value="Próximo"]'

  def pesquisar_por_RNM(rnm)
    rnm_input.set(rnm)
    btn_pesquisar.click
    aguardar_carregamento
    wait_until_resultado_pesquisa_visible
  end

  def pesquisar_por_filtro(dados)
    rnm_input.set(dados[:valor]) if dados[:filtro] == 'RNM'
    data_nasc_input.set(dados[:valor]) if dados[:filtro] == 'data_nasc'

    btn_pesquisar.click
    aguardar_carregamento
    wait_until_resultado_pesquisa_visible
  end

end