
class ConsultarImigrantePage < PageHelper

  element :nome_input, '#formulario-manter-estrangeiro\:nome'
  element :rnm_input, :xpath, '//*[text()[contains(.,"RNM:")]]/../input'
  element :data_nasc_input, '#formulario-manter-estrangeiro\:calDtNascInputDate'
  element :resultado_pesquisa, 'tbody[id*="dataModelEstrangeiro"] tr'
  element :qtd_dias_renovacao, '#formulario-manter-estrangeiro\:idQtdDias'
  element :label_requerimentos_imigrante, '#formulario-manter-estrangeiro\:dvReqsRenovacao'

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

    if(label_requerimentos_imigrante.text.include?("201"))

      puts "\nPreenchendo renovacao"
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

    page.assert_text("MARISOL FERNANDA GALLEGOS LOPEZ")
    page.assert_text("G148129W")
    page.assert_text("01/01/2010")
    page.assert_text("ROSMERY LOPEZ FERNANDEZ")

  end

  def validar_dados_pessoais

    puts "Validando informações dos dados pessoais do imigrante"

    page.assert_text(aba_dados_pessoais.text) # Verifica se está na respectiva aba
    page.assert_text("F028776Q") # Nº RNM
    page.assert_text("MAGDALENNYS NAZARETH MOYA GOLDING") # Nome
    page.assert_text("MARIA MAGDALENA MOYA GOLDING") # Mãe (Filiação 2)
    page.assert_text("Feminino") # Sexo
    page.assert_text("01/01/2000") # Data nascimento
    page.assert_text("MAGDALENNY55@GMAIL.COM") # Email
    page.assert_text("930 - ESTUDANTE") # Ocupação principal
    page.assert_text("COMANÁ") # Cidade de Nascimento

  end

  def validar_dados_registro

    puts "Validando informações dos dados do registro do imigrante"

    page.assert_text(aba_dados_registro.text) # Verifica se está na respectiva aba
    page.assert_text("F028776Q")
    page.assert_text("MAGDALENNYS NAZARETH MOYA GOLDING")
    page.assert_text("Ativo") # Situação do registro
    page.assert_text("21/11/2018") # Data do registro
    page.assert_text("273 - PORTARIA INTERMINISTERIAL N 9/2018") # Amparo Legal
    page.assert_text("028776190481968502") # Nº da CIE
    page.assert_text("PACARAIMA") # Local de entrada
    page.assert_text("01/10/2018") # Data de entrada

  end

  def validar_dados_endereco

    puts "Validando informações dos dados do endereço do imigrante"

    page.assert_text(aba_endereco.text) # Verifica se está na respectiva aba
    page.assert_text("F028776Q")
    page.assert_text("MAGDALENNYS NAZARETH MOYA GOLDING")
    page.assert_text("DELEMIG/DREX/SR/PF/RR") # Unidade vinculada
    page.assert_text("69305-370") # CEP
    page.assert_text("Boa Vista") # Cidade
    page.assert_text("RR") # Sigla Estado
    page.assert_text("RUA FÁBIO MAGALHÃES") # Logradouro
    page.assert_text("TRINTA E UM DE MARÇO") # Bairro

  end

  def validar_dados_historico

    puts "Validando informações dos dados do histórico do imigrante"

    page.assert_text(aba_historico.text) # Verifica se está na respectiva aba
    page.assert_text("F028776Q")
    page.assert_text("MAGDALENNYS NAZARETH MOYA GOLDING")
    page.assert_text("Solicitações")
    page.assert_text("Histórico de manutenções de registro")

  end

end