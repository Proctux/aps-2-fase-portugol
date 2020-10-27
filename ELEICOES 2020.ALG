Algoritmo "ELEICOES 2020"
// Disciplina   : [Lógica de Programação e Algoritimo]
// Professor   : Robson Cavalcante
// Descrição   : Define as zonas e seções de eleição, realiza votação e elege presidente
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 25/10/2020
Var
// Seção de Declarações das variáveis 

  secao, zona, numeroZona, numeroSecao, quantidadePossiveisEleitores: inteiro
  totalDeVotos, votosNulos, votosEmBranco, maiorQuantidadeVotos: inteiro
  posicaoVetorVencedor, candidatoMaiorQuatidadeVotos, candidato: inteiro
  quantidadeVotos, posicaoQuantidadeVotos, voto, empateVotos: inteiro
  posicaoLocalizacao, posicaoSecao: inteiro
  
  fimEleicao, confirmaVoto, secaoZonaConfirmada: caracter
  
  percentualVotosVencedor, percentualVotos: real
  
  vetorZona: vetor[1..8] de inteiro
  vetorSecao: vetor[1..8] de inteiro
  vetorLocalizacao: vetor[1..8] de caracter
  vetorNomeCandidatos: vetor[1..4] de caracter
  vetorVotosPorCandidato: vetor[1..4] de inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

  // Declaração de Zonas eleitorais

  para numeroZona de 1 ate 8 faca
    se (numeroZona < 5) entao
      vetorZona[numeroZona] <- 29
    senao
      vetorZona[numeroZona] <- 84
    fimse
  fimpara
  
  // Declaração de Seções eleitorais

  vetorSecao[1] <- 17
  vetorSecao[2] <- 54
  vetorSecao[3] <- 348
  vetorSecao[4] <- 347
  vetorSecao[5] <- 13
  vetorSecao[6] <- 15
  vetorSecao[7] <- 25
  vetorSecao[8] <- 40
  
  // Declaração de localizações das seções/zonas
  
  vetorLocalizacao[1] <- "ESCOLA DE EDUCAÇÃO BÁSICA PROF. LAÉRCIO CALDEIRA DE ANDRADA - CAMPINAS"
  vetorLocalizacao[2] <- "ESCOLA DE EDUCAÇÃO BÁSICA FRANCISCO TOLENTINO - CENTRO"
  vetorLocalizacao[3] <- "COC FLORIPA CONTINENTE - CAMPINAS"
  vetorLocalizacao[4] <- "CENTRO EDUCACIONAL MUNICIPAL SANTA ANA - COLONIA SANTANA"
  vetorLocalizacao[5] <- "CENTRO EDUCACIONAL MUNICIPAL MARIA IRACEMA MARTINS DE ANDRADE - IPIRANGA"
  vetorLocalizacao[6] <- "COLÉGIO ELISA ANDREOLI - BARREIROS"
  vetorLocalizacao[7] <- "ESCOLA DE EDUCAÇÃO BÁSICA PROFESSOR OSWALDO RODRIGUES CABRAL - BELA VISTA"
  vetorLocalizacao[8] <- "ESCOLA DE EDUCAÇÃO BÁSICA PRESIDENTE JUSCELINO KUBITSCHEK - AREIAS"
  
  
  


  escreval("=========================================================")
  escreval("Eleições 2020 - Configurações iniciais da urna eletrônica")
  escreval("=========================================================")
  escreval("")
  
  // Confirmação de existência e digitação correta de Seção e Zona
  
  enquanto (secaoZonaConfirmada <> "S") faca
    escreva("Digite o número da zona: ")
    leia(zona)
    escreva("Digite o número da seção: ")
    leia(secao)
    escreval("")
    
    se (zona = 29) entao
      para numeroSecao de 1 ate 4 faca
        se (secao = vetorSecao[numeroSecao]) entao
          escreval("Seção encontrada e armazena")
          secaoZonaConfirmada <- "S"
        fimse
      fimpara

      se secaoZonaConfirmada <> "S" entao
        escreval("Lamento, a seção digitada não existe nesta zona.")
      fimse
    senao
      se (zona = 84) entao
        para numeroSecao de 5 ate 8 faca
          se (secao = vetorSecao[numeroSecao]) entao
            escreval("Seção encontrada e armazena")
            secaoZonaConfirmada <- "S"
          fimse
        fimpara
        
        se secaoZonaConfirmada <> "S" entao
          escreval("Lamento, a seção digitada não existe nesta zona.")
        fimse
      senao
        escreval("Lamento, zona/seção não encontrada. Tente novamente.")
        secaoZonaConfirmada <- "N"
      fimse
    fimse
    escreval("")
  fimenquanto
  
  // Informa a quantidade de eleitores da região
  
  escreval("")
  escreval("Digite a quantidade de possíveis eleitores da seção ", secao," zona", zona)
  leia(quantidadePossiveisEleitores)
  escreval("")
  
  timer(2000)
  limpatela
  timer(0)
  
  // RESUMO DA ZONA/SEÇÃO ELEITORAL SELECIONADA
  
  escreval("==============================================================")
  escreval("|           Resumo de zona / seção eleitoral                 |")
  escreval("==============================================================")
  para posicaoSecao de 1 ate 8 faca
    se (secao = vetorSecao[posicaoSecao]) entao
      posicaoLocalizacao <- posicaoSecao
    fimse
  fimpara
  
  escreval("Zona: ", zona)
  escreval("Seção: ", secao)
  escreval("Localização:")
  escreval(vetorLocalizacao[posicaoLocalizacao])

  timer(10000)
  timer(0)
  limpatela
  
  // Inicializando variáveis de votos por candidatos
  
  vetorVotosPorCandidato[1] <- 0
  vetorVotosPorCandidato[2] <- 0
  vetorVotosPorCandidato[3] <- 0
  vetorVotosPorCandidato[4] <- 0
  votosEmBranco <- 0
  votosNulos <- 0
  
  // informando nome dos candidatos
  
  vetorNomeCandidatos[1] <- "Fulano de Tal"
  vetorNomeCandidatos[2] <- "Sicrano ed Lat"
  vetorNomeCandidatos[3] <- "Beltrano de Ta Úh"
  vetorNomeCandidatos[4] <- "Capriciano de Town"
  
  // Lista com candidatos para facilitar escolha
  
  repita
    escreval("Relação de candidatos para presidente: ")
    escreval("")
    escreval("1 - ", vetorNomeCandidatos[1])
    escreval("2 - ", vetorNomeCandidatos[2])
    escreval("3 - ", vetorNomeCandidatos[3])
    escreval("4 - ", vetorNomeCandidatos[4])
    escreval("5 - VOTO EM BRANCO (Nenhum dos candidatos listados)")
  
    escreval("")
    
    // digitação da escolha de candidato ou votos em branco

    confirmaVoto <- "N"
    enquanto (confirmaVoto <> "S") faca
      escreval("")
      escreval("Digite o dígito que representa seu candidato")
      leia(voto)
    
      escolha (voto)
        caso 1
          escreval("Seu voto será computado para o candidato")
          escreval("Fulano de Tal. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)
          
          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[1] <- vetorVotosPorCandidato[1] + 1
          fimse
        caso 2
          escreval("Seu voto será computado para o candidato")
          escreval("Sicrano ed Lat. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[2] <- vetorVotosPorCandidato[2] + 1
          fimse
        caso 3
          escreval("Seu voto será computado para o candidato")
          escreval("Beltrano de Ta Úh. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[3] <- vetorVotosPorCandidato[3] + 1
          fimse
        caso 4
          escreval("Seu voto será computado para o candidato")
          escreval("Capriciano de Town. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[4] <- vetorVotosPorCandidato[4] + 1
          fimse
        caso 5
          escreval("Seu voto será computado em branco. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            votosEmBranco <- votosEmBranco + 1
          fimse
        outrocaso
          escreval("Seu voto será computado como nulo. Deseja prosseguir?(S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            votosNulos <- votosNulos + 1
          fimse
      fimescolha
    fimenquanto
        
    escreval("Deseja finalizar as eleições e exibir os resultados? (S/N)")
    leia(fimEleicao)
    fimEleicao <- maiusc(fimEleicao)
    
    timer(1000)
    limpatela
    timer(0)
    
  ate(fimEleicao = "S")
  
  totalDeVotos <- votosEmBranco + votosNulos
  
  para quantidadeVotos de 1 ate 4 faca
    totalDeVotos <- totalDeVotos + vetorVotosPorCandidato[quantidadeVotos]
  fimpara
  
  candidatoMaiorQuatidadeVotos <- -1
  empateVotos <- 0
  
  para candidato de 1 ate 4 faca
    se (vetorVotosPorCandidato[candidato] = candidatoMaiorQuatidadeVotos) entao
      empateVotos <- empateVotos + 1
    fimse
    
    se (vetorVotosPorCandidato[candidato] > candidatoMaiorQuatidadeVotos) entao
      candidatoMaiorQuatidadeVotos <- vetorVotosPorCandidato[candidato]
      posicaoVetorVencedor <- candidato
    fimse
  fimpara
  
  escreval("")
  escreval("Resultado da votação para eleições à presidente: ")
  escreval("")

  para posicaoQuantidadeVotos de 1 ate 4 faca
    escreval("Candidato: ", vetorNomeCandidatos[posicaoQuantidadeVotos])
    escreval("Quantidade de votos: ", vetorVotosPorCandidato[posicaoQuantidadeVotos])
    
    percentualVotos <- vetorVotosPorCandidato[posicaoQuantidadeVotos] / totalDeVotos * 100
    escreval("Percentual dos votos: ", percentualVotos:2:2, "%")
    escreval("________________________________________________________________")
    escreval("")
  fimpara
  
  percentualVotosVencedor <- vetorVotosPorCandidato[posicaoVetorVencedor] / totalDeVotos * 100

  escreval("A quantidade possível de eleitores era de: ", quantidadePossiveisEleitores)
  escreval("O total de votos foi de: ", totalDeVotos," votos")
  escreval("O total de votos em BRANCO foi de: ", votosEmBranco," votos")
  escreval("O total de votos NULOS foi de: ", votosNulos," votos")
  escreval("")
  
  se(empateVotos > 0 ) entao
    escreval("Houve um empate entre candidatos. Com isso, a eleição será refeita")
  senao
    escreval("O candidato vencedor das eleições foi o candidato: ", vetorNomeCandidatos[posicaoVetorVencedor])
    escreval("Com um total de: ", vetorVotosPorCandidato[posicaoVetorVencedor]," votos")
    escreval("ou ", percentualVotosVencedor:2:2,"% do total de votos!")
  fimse

Fimalgoritmo