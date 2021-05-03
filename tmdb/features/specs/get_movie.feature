#language: pt

Funcionalidade: Consultar filme
  Como usuário da api de consulta de filmes
  Quero realizar uma consulta
  Para obter informações sobre um filme

  Contexto: 
    Dado o endereço de uma api de consulta de filme

  Esquema do Cenário: Consutar filme
    Quando consulto um filme através do id
    | id         |
    | 19404      |
    | 2          |
    Então api retorna status code 200
    E apresenta os dados do filme

  Esquema do Cenário: Filme inexistente
  Quando consulto um filme através do id
    | id         |
    | <id_filme> |
    Então sistema retorna mensagem "The resource you requested could not be found."

  Exemplos:
    | id_filme |
    | teste    |
    | 1        |
