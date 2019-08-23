
class ConsultarImigrantePage < PageHelper

  element :nome_input, '#formulario-manter-estrangeiro\:nome'
  element :rnm_input, :xpath, '//*[text()[contains(.,"RNM:")]]/../input'
  element :data_nasc_input, '#formulario-manter-estrangeiro\:calDtNascInputDate'
  element :resultado_pesquisa, 'tbody[id*="dataModelEstrangeiro"] tr'
  element :qtd_dias_renovacao, 'input[name*="idQtdDias"]'
  element :label_requerimentos_imigrante, 'div[id*="dvReqsRenovacao"]'

  element :aba_dados_pessoais, 'td[id*="DadosPessoais_lbl"].rich-tab-active'
  element :aba_dados_registro, 'td[id*="DadosRegistro_lbl"].rich-tab-active'
  element :aba_endereco, 'td[id*="Endereco_lbl"].rich-tab-active'
  element :aba_historico, 'td[id*="Historico"].rich-tab-active'

  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :btn_detalhar, 'input.btnDetalhar'
  element :btn_reimprimir_protocolo_atual, 'a[title="Reimprimir Protocolo Atual"]'
  element :btn_renovar_protocolo, 'a[title="Renovar Protocolo"]'
  element :btn_confirmar, 'input[value="Confirmar"]'
  element :btn_proximo, 'input[value="Próximo"]'

  def pesquisar_por_RNM(rnm)

    puts "Pesquisando imigrante pelo RNM"

    rnm_input.set(rnm)
    btn_pesquisar.click
    aguardar_carregamento
    wait_until_resultado_pesquisa_visible

  end

  def pesquisar_por_filtro(dados)

    puts "Pesquisando imigrante por #{dados}"

    nome_input.set(dados[:valor]) if dados[:filtro] == 'nome'
    rnm_input.set(dados[:valor]) if dados[:filtro] == 'RNM'

    btn_pesquisar.click
    aguardar_carregamento
    wait_until_resultado_pesquisa_visible

  end

  def confirmar_dias_renovacao(quantidade)

    if(label_requerimentos_imigrante.text.include?("2"))

      puts "\nPreenchendo renovacao"
      @remetido="remetido"
      qtd_dias_renovacao.set(quantidade)
      puts "Confirmando renovacao"
      btn_confirmar.click
      aguardar_carregamento

    else

      print "."
      confirmar_dias_renovacao(quantidade)

    end

  end

  def validar_registro_encontrado

    puts "Visualizando informações do registro encontrado"

  end

  def validar_dados_pessoais

    puts "Validando informações dos dados pessoais do imigrante"

  end

  def validar_dados_registro

    puts "Validando informações dos dados do registro do imigrante"


  end

  def validar_dados_endereco

    puts "Validando informações dos dados do endereço do imigrante"

  end

  def validar_dados_historico

    puts "Validando informações dos dados do histórico do imigrante"

  end

end