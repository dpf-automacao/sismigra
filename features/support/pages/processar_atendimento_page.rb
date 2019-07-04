require_relative "../helpers/file_helper.rb"

class ProcessarAtendimentoPage < PageHelper

  def initialize
    @login = LoginPage.new
    @menu = MenuPage.new
  end

  # Mapeamento de elementos de preenchimento

  element :periodo_inicial_input, "input[id*='periodoInicioInputDate']"
  element :periodo_final_input, "input[id*='periodoFinalInputDate']"
  element :amparo_legal_input, "input[id*='inputText_comboAmparo']"
  element :telefone_contanto_input, "input[id*='telefoneResidencial']"
  element :resultado_da_pesquisa_textarea, "fieldset[class='mTop10px'] textarea[id*='resultadoPesquisa']"

  # Mapeamento de botoes, links

  element :tipo_solicitacao_select, "select[id*='formulario-pesquisar:tipo']"
  element :situacao_requerimento_select, "select[id*='formulario-pesquisar:situacao']"
  element :pesquisar_requerimento_btn, "input[id*='botaoPesquisar']"
  element :proximo_btn, "input[value*='Próximo']"
  element :uf_select, "select[id*='uf']"
  element :municipio_select, "select[id*='Municipios']"
  element :associar_checkbox, "input[name*='dataTableEstrangeiros']"
  element :confirmar_identidade_btn, "input[value*='Confirmar Identidade']"
  element :confirmar_identidade_btn_disabled, "input[value*='Confirmar Identidade'][disabled='disabled']"
  element :fotos, :xpath, "//label[text()='Duas fotos 3x4;']/../../td/input"
  element :documento_de_viagem_checkbox, :xpath, "//label[text()='Documento de viagem;']/../../td/input"
  element :comprovante_filiacao, :xpath, "//label[text()='Comprovante de filiação']/../../td/input"
  element :declaracao_endereco, :xpath, "//label[text()='Declaração de endereço eletrônico']/../../td/input"
  element :certidao_nada_consta, :xpath, "//label[text()='Certidões de antecedentes criminais de onde residiu nos últimos cinco anos']/../../td/input"
  element :comprovante_domicilio, :xpath, "//label[text()='Comprovante de domicílio na localidade fronteiriça;']/../../td/input"
  element :adicionar_documento_btn, "a img[title='Adicionar']"
  element :anexar_arquivo_btn, "input[id*='idUploadArquivoDocumentoAdicionar']"
  element :salvar_btn, "input[value='Salvar']"
  element :concluir_btn, "input[value='Concluir']"
  element :encerrar_btn, "input[value='Encerrar']"

  # Mapeamento de elementos para validação e load

  element :carregamento_load, "img[src*='spinner.gif']"
  elements :mensagem_erro, "div.cRed"

  # Mapeamento de varios elementos

  elements :numeros_requerimentos, "td[id*='numeroRequerimento']"
  elements :btns_atendimento, "input[class='btnAtendimento']"
  elements :arquivos_anexados, "td a[onclick*='idTabelaArquivos']"
  elements :alterar_dados_dos_registros, "input[title='Alterar dados do registro da pesquisa.']"

  # elements :tipo_de_documentos, "td[id*='formulario-processar-cie'] input[type='checkbox']"

  # Definindo metodo para Acessar Processar atendimento

  def acessar_processar_atendimento

    @login.logar_siseg("dante.dlpf", "ctidpf")
    @menu.processar_atendimento_sub_menu

  end

  # Definindo metodo para pesquisar requerimento

  def pesquisar_solicitacao(tipo_solicitacao, situacao_requerimento)

    @tipo_solicitacao = tipo_solicitacao
    @situacao_requerimento = situacao_requerimento

    periodo_inicial_input.set("01/01/2000")
    periodo_final_input.set("03/07/2019")
    tipo_solicitacao_select.select(@tipo_solicitacao)
    situacao_requerimento_select.select(@situacao_requerimento)
    pesquisar_requerimento_btn.click
    wait_until_carregamento_load_invisible
    has_numeros_requerimentos?

    @nr_requerimento = numeros_requerimentos[1].text
    gravar_dados("features/arquivos/requerimentos/requerimentos.txt", @nr_requerimento)
    btns_atendimento[1].click

  end

  # Definindo metodo para preencher Dados Pessoais

  def preencher_dados_pessoais

    amparo_legal_input.set("36 - ART")
    sleep(1)
    amparo_legal_input.send_keys(:enter)
    avancar_proximo_processar_atendimento

  end

  # Definindo metodo para preencher Dados do Registro

  def preencher_dados_do_registro

    uf_select.select("Acre")
    municipio_select.select("Acrelândia")
    avancar_proximo_processar_atendimento

  end

  def preencher_endereco

    if(@tipo_solicitacao == "Autorização de Residência" && @situacao_requerimento == "Aberto")
      binding.pry
      telefone_contanto_input.click.set("61999999999")
      avancar_proximo_processar_atendimento
    else
      telefone_contanto_input.click.set("61999999999")
      avancar_proximo_processar_atendimento
    end

  end

  def preencher_documentos

    choose("Sim")
    fotos.check
    documento_de_viagem_checkbox.check
    comprovante_filiacao.check
    declaracao_endereco.check
    certidao_nada_consta.check
    comprovante_domicilio.check
    adicionar_documento_btn.click
    anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/arquivo_teste.jpg")
    has_arquivos_anexados?
    avancar_proximo_processar_atendimento

  end


  def preencher_resultado_da_pesquisa

    @indice = 0
    @tamanho_alterar_dados = alterar_dados_dos_registros.size

    while(@indice < @tamanho_alterar_dados)

      alterar_dados_dos_registros[@indice].click
      resultado_da_pesquisa_textarea.set("NADA CONSTA")
      salvar_btn.click
      wait_until_carregamento_load_invisible
      @indice += 1

    end

    avancar_proximo_processar_atendimento
  end

  def visualizar_previa_carteira

    binding.pry
    has_concluir_btn?
    concluir_btn.click
    binding.pry
    has_encerrar_btn?
    page.assert_text('Dados salvos com sucesso')
    encerrar_btn.click

  end

  # Definindo metodo para avancar para proxima pagina

  def avancar_proximo_processar_atendimento

    proximo_btn.click
    wait_until_carregamento_load_invisible

    if(has_associar_checkbox?(wait:1))

      associar_checkbox.click
      wait_until_confirmar_identidade_btn_disabled_invisible
      has_confirmar_identidade_btn?
      confirmar_identidade_btn.click

      if(has_mensagem_erro?(wait:2))
          proximo_btn.click
      end
    end

  end

end