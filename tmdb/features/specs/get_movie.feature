#language: pt

Funcionalidade: Consultar filme
  Como usuário da api de consulta de filmes
  Quero realizar uma consulta
  Para obter informações sobre um filme

  Cenário: Consutar filme
  Dado o endereço de uma api de consulta de filme
  Quando consulto um filme através do ID
  Então é apresentado tmdb id "tt0112870"