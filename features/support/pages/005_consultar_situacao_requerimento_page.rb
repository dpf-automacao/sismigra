class ConsultarSituacaoRequerimentoPage < PageHelper

    element :nr_requerimento_input, 'input[id*="numeroRequerimento"]'
    element :resultado_pesquisa, 'tbody[id*="tb"] tr'
    element :icone_situacao, 'tbody[id*="tb"] tr td img'
    element :legendas, :xpath, '//legend[contains(text(),"Legenda")]/..'

    element :btn_pesquisar, 'input[value="Pesquisar"]'


    def pesquisar_por_RNM(rnm)
      puts "Pesquisando pelo RNM: #{rnm}"

      nr_requerimento_input.set(rnm)
      btn_pesquisar.click
      aguardar_carregamento
      wait_until_resultado_pesquisa_visible
    end

    def validar_registro_encontrado
      puts "Validando informações do registro encontrado"

      page.assert_text("201809190930100514")
      page.assert_text("Segunda via de CRNM")
      page.assert_text(icone_situacao[:title])
    end

    def validar_legenda

      @titulo_situacao = icone_situacao[:title]
      puts "Validando informações da legenda da situação #{@titulo_situacao}"

      within(legendas) do
        page.assert_text(@titulo_situacao)
      end

    end

  end