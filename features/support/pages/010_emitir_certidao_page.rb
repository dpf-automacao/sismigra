class EmitirCertidaoPage < PageHelper

=begin

Autor: Jerfersson Fragoso e Vinicius Fernando Costa Coutinho
Data: 31/08/2019
Versão: 1.0
Contato: vfcoutinho@stefanini.com

=end

    element :rnm_input, :xpath, '//*[text()[contains(.,"RNM:")]]/../input'
    element :resultado_pesquisa, 'tbody[id*="dataModelEstrangeiro"] tr'

    element :btn_pesquisar, 'input[value="Pesquisar"]'
    element :btn_certidoes, 'input[id*="EstrangeiroCertidaos"]'
    element :btn_imprimir_certidao, '#idFormularioCertidao\:imprimir'

    def pesquisar_por_RNM(rnm)
      rnm_input.set(rnm)
      btn_pesquisar.click
      aguardar_carregamento
      wait_until_resultado_pesquisa_visible
    end

    def emitir_certidao(certidao)
      btn_certidoes.click
      aguardar_carregamento
      choose(certidao)
      btn_imprimir_certidao.click
      sleep(1)
    end

  end