Algoritmo "ELEICOES 2020"
// Disciplina   : [L�gica de Programa��o e Algoritimo]
// Professor   : Robson Cavalcante
// Descri��o   : Define as zonas e se��es de elei��o, realiza vota��o e elege presidente
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 25/10/2020
Var
// Se��o de Declara��es das vari�veis 

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
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

  // Declara��o de Zonas eleitorais

  para numeroZona de 1 ate 8 faca
    se (numeroZona < 5) entao
      vetorZona[numeroZona] <- 29
    senao
      vetorZona[numeroZona] <- 84
    fimse
  fimpara
  
  // Declara��o de Se��es eleitorais

  vetorSecao[1] <- 17
  vetorSecao[2] <- 54
  vetorSecao[3] <- 348
  vetorSecao[4] <- 347
  vetorSecao[5] <- 13
  vetorSecao[6] <- 15
  vetorSecao[7] <- 25
  vetorSecao[8] <- 40
  
  // Declara��o de localiza��es das se��es/zonas
  
  vetorLocalizacao[1] <- "ESCOLA DE EDUCA��O B�SICA PROF. LA�RCIO CALDEIRA DE ANDRADA - CAMPINAS"
  vetorLocalizacao[2] <- "ESCOLA DE EDUCA��O B�SICA FRANCISCO TOLENTINO - CENTRO"
  vetorLocalizacao[3] <- "COC FLORIPA CONTINENTE - CAMPINAS"
  vetorLocalizacao[4] <- "CENTRO EDUCACIONAL MUNICIPAL SANTA ANA - COLONIA SANTANA"
  vetorLocalizacao[5] <- "CENTRO EDUCACIONAL MUNICIPAL MARIA IRACEMA MARTINS DE ANDRADE - IPIRANGA"
  vetorLocalizacao[6] <- "COL�GIO ELISA ANDREOLI - BARREIROS"
  vetorLocalizacao[7] <- "ESCOLA DE EDUCA��O B�SICA PROFESSOR OSWALDO RODRIGUES CABRAL - BELA VISTA"
  vetorLocalizacao[8] <- "ESCOLA DE EDUCA��O B�SICA PRESIDENTE JUSCELINO KUBITSCHEK - AREIAS"
  
  
  


  escreval("=========================================================")
  escreval("Elei��es 2020 - Configura��es iniciais da urna eletr�nica")
  escreval("=========================================================")
  escreval("")
  
  // Confirma��o de exist�ncia e digita��o correta de Se��o e Zona
  
  enquanto (secaoZonaConfirmada <> "S") faca
    escreva("Digite o n�mero da zona: ")
    leia(zona)
    escreva("Digite o n�mero da se��o: ")
    leia(secao)
    escreval("")
    
    se (zona = 29) entao
      para numeroSecao de 1 ate 4 faca
        se (secao = vetorSecao[numeroSecao]) entao
          escreval("Se��o encontrada e armazena")
          secaoZonaConfirmada <- "S"
        fimse
      fimpara

      se secaoZonaConfirmada <> "S" entao
        escreval("Lamento, a se��o digitada n�o existe nesta zona.")
      fimse
    senao
      se (zona = 84) entao
        para numeroSecao de 5 ate 8 faca
          se (secao = vetorSecao[numeroSecao]) entao
            escreval("Se��o encontrada e armazena")
            secaoZonaConfirmada <- "S"
          fimse
        fimpara
        
        se secaoZonaConfirmada <> "S" entao
          escreval("Lamento, a se��o digitada n�o existe nesta zona.")
        fimse
      senao
        escreval("Lamento, zona/se��o n�o encontrada. Tente novamente.")
        secaoZonaConfirmada <- "N"
      fimse
    fimse
    escreval("")
  fimenquanto
  
  // Informa a quantidade de eleitores da regi�o
  
  escreval("")
  escreval("Digite a quantidade de poss�veis eleitores da se��o ", secao," zona", zona)
  leia(quantidadePossiveisEleitores)
  escreval("")
  
  timer(2000)
  limpatela
  timer(0)
  
  // RESUMO DA ZONA/SE��O ELEITORAL SELECIONADA
  
  escreval("==============================================================")
  escreval("|           Resumo de zona / se��o eleitoral                 |")
  escreval("==============================================================")
  para posicaoSecao de 1 ate 8 faca
    se (secao = vetorSecao[posicaoSecao]) entao
      posicaoLocalizacao <- posicaoSecao
    fimse
  fimpara
  
  escreval("Zona: ", zona)
  escreval("Se��o: ", secao)
  escreval("Localiza��o:")
  escreval(vetorLocalizacao[posicaoLocalizacao])

  timer(10000)
  timer(0)
  limpatela
  
  // Inicializando vari�veis de votos por candidatos
  
  vetorVotosPorCandidato[1] <- 0
  vetorVotosPorCandidato[2] <- 0
  vetorVotosPorCandidato[3] <- 0
  vetorVotosPorCandidato[4] <- 0
  votosEmBranco <- 0
  votosNulos <- 0
  
  // informando nome dos candidatos
  
  vetorNomeCandidatos[1] <- "Fulano de Tal"
  vetorNomeCandidatos[2] <- "Sicrano ed Lat"
  vetorNomeCandidatos[3] <- "Beltrano de Ta �h"
  vetorNomeCandidatos[4] <- "Capriciano de Town"
  
  // Lista com candidatos para facilitar escolha
  
  repita
    escreval("Rela��o de candidatos para presidente: ")
    escreval("")
    escreval("1 - ", vetorNomeCandidatos[1])
    escreval("2 - ", vetorNomeCandidatos[2])
    escreval("3 - ", vetorNomeCandidatos[3])
    escreval("4 - ", vetorNomeCandidatos[4])
    escreval("5 - VOTO EM BRANCO (Nenhum dos candidatos listados)")
  
    escreval("")
    
    // digita��o da escolha de candidato ou votos em branco

    confirmaVoto <- "N"
    enquanto (confirmaVoto <> "S") faca
      escreval("")
      escreval("Digite o d�gito que representa seu candidato")
      leia(voto)
    
      escolha (voto)
        caso 1
          escreval("Seu voto ser� computado para o candidato")
          escreval("Fulano de Tal. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)
          
          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[1] <- vetorVotosPorCandidato[1] + 1
          fimse
        caso 2
          escreval("Seu voto ser� computado para o candidato")
          escreval("Sicrano ed Lat. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[2] <- vetorVotosPorCandidato[2] + 1
          fimse
        caso 3
          escreval("Seu voto ser� computado para o candidato")
          escreval("Beltrano de Ta �h. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[3] <- vetorVotosPorCandidato[3] + 1
          fimse
        caso 4
          escreval("Seu voto ser� computado para o candidato")
          escreval("Capriciano de Town. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            vetorVotosPorCandidato[4] <- vetorVotosPorCandidato[4] + 1
          fimse
        caso 5
          escreval("Seu voto ser� computado em branco. Deseja prosseguir? (S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            votosEmBranco <- votosEmBranco + 1
          fimse
        outrocaso
          escreval("Seu voto ser� computado como nulo. Deseja prosseguir?(S/N): ")
          leia(confirmaVoto)
          confirmaVoto <- maiusc(confirmaVoto)

          se(confirmaVoto = "S") entao
            votosNulos <- votosNulos + 1
          fimse
      fimescolha
    fimenquanto
        
    escreval("Deseja finalizar as elei��es e exibir os resultados? (S/N)")
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
  escreval("Resultado da vota��o para elei��es � presidente: ")
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

  escreval("A quantidade poss�vel de eleitores era de: ", quantidadePossiveisEleitores)
  escreval("O total de votos foi de: ", totalDeVotos," votos")
  escreval("O total de votos em BRANCO foi de: ", votosEmBranco," votos")
  escreval("O total de votos NULOS foi de: ", votosNulos," votos")
  escreval("")
  
  se(empateVotos > 0 ) entao
    escreval("Houve um empate entre candidatos. Com isso, a elei��o ser� refeita")
  senao
    escreval("O candidato vencedor das elei��es foi o candidato: ", vetorNomeCandidatos[posicaoVetorVencedor])
    escreval("Com um total de: ", vetorVotosPorCandidato[posicaoVetorVencedor]," votos")
    escreval("ou ", percentualVotosVencedor:2:2,"% do total de votos!")
  fimse

Fimalgoritmo