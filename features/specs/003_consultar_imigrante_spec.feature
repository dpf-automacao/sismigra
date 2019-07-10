#language: pt

Funcionalidade: Consultar Imigrante

  # @consultar_imigrante_por_RNM
  # Cenario: Consultar Imigrante por RNM
  #   Quando solicitar consultar imigrantes
  #   E informar os dados para pesquisa
  #     | filtro | RNM      |
  #     | valor  | G148129W |
  #   Entao deve apresentar registros correspodentes aos dados pesquisados

  @consultar_imigrante
  Esquema do Cenário: Consultar imigrante
    Quando solicitar consultar imigrantes
    E informar os dados para pesquisa
      | filtro | <filtro> |
      | valor  | <valor>  |
    Entao deve apresentar registros correspodentes aos dados pesquisados

    Exemplos:
    | filtro | valor                           |
    | RNM    | G148129W                        |
    | nome   | MARISOL FERNANDA GALLEGOS LOPEZ |

  @detalhar_imigrante
  Cenario: Detalhar Imigrante
    Quando consultar o imigrante pelo RNM "F028776Q"
    E solicitar detalhar
    Então deve visualizar as informações dos dados pessoais
    E deve visualizar as informações dos dados do registro
    E deve visualizar as informações do endereço
    E deve visualizar as informações do histórico

  @reimprimir_protocolo
  Cenario: Reimprimir Protocolo atual
    Quando consultar o imigrante pelo RNM "F028776Q"
    E solicitar reimprimir o protocolo atual
    Então deve exibir o protocolo para impressão

  @renovar_protocolo
  Cenario: Renovar Protocolo
    Quando consultar o imigrante pelo RNM "F0476261"
    E solicitar renovar o protocolo atual
    E confirmar a quantidade de dias para renovação
    Então o protocolo deve ser renovado