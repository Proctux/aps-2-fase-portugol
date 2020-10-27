Algoritmo "ATIVIDADE PRATICA SUPERVISIONADA COMPLETE - 2 SEMESTRE"
// Disciplina   : [Lógica de Programação e Algoritimos]
// Professor   : Robson Cavalcante
// Descrição   : Atividade Prática Supervisionada
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 12/10/2020 à 27/10/2020
Var
// Seção de Declarações das variáveis

// Variáveis de apresentação do menu -- //

   opcaoAlgoritimo, temporizador: inteiro
   

// --- Variáveis do primeiro algorítimo [IMPOSTO DE RENDA] --- //

   verificador, verificacaoDeResposta: inteiro
   
   resposta, confirmar: caracter

   salarioBrutoAnual, rendimentosBrutoAnual, baseCalculoTotal, despesas: real
   aliquota, totalIRPF, rendimentosTotais, baseValorTotal: real
   rendimentoLiquido: real
   
// --- Variáveis do segundo algorítimo [CONTROLE ACADÊMICO] --- //

  nomeInstituicao, disciplina, confirmacao, limparTelaParaGerais: caracter

  diasLetivos, contador, carregador, numeroProvas, numeroTrabalhos: inteiro
  alunosReprovados, alunosAprovados, quantidadeAlunos, faltasAluno: inteiro
  aluno, numeroProvasTrabalhos, escolhaControleModulo, notas: inteiro

  percentualReprovados, percentualAprovados, mediaTurma, mediaFinal: real
  somaGeralMediaNotas, frequencia, mediaProvas, mediaTrabalhos: real
  somaNotaAlunoProvas, somaNotaAlunoTrabalhos: real
  nota: real
   
// --- Variáveis do terceiro algorítimo [ELEIÇÃO PARA PRESIDENTE] --- //

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

// --- Variáveis do quarto algorítimo [CÁLCULO DO CONSUMO DE ENERGIA] --- //

  diasAgosto, posicaoUsuario, codigoEquipamento, posicaoEquipamento: inteiro
  diasSetembro: inteiro
  diasConsumo: inteiro

  diferenca: real

  consumoMesAgosto, consumoKiloWattsAgosto, consumoKiloWattsHoraAgosto: real
  totalAPagar: real

  valorKiloWattHora, consumoGeral, consumoTodosUsuarios: real
  consumoGeralKiloWatts: real
  consumoGeralKiloWattsHora: real

  consumoMesSetembro, consumoKiloWattsSetembro: real
  consumoKiloWattsHoraSetembro: real

  vetorUsuarios: vetor[1..10] de caracter
  vetorEquipamentos: vetor[1..10] de caracter

  vetorPotenciaEquipamentos: vetor[1..10] de inteiro

  matrizConsumoDiarioEquipamentos: vetor[1..10,1..10] de inteiro
  matrizConsumoDiarioEquipamentosSetembro: vetor[1..10,1..10] de inteiro
  matrizConsumoTotalMeses: vetor[1..10,1..2] de real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("=================================================================")
   escreval()
   escreval("         |  |¯¯¯   |¯¯¯      |¯¯¯|  |¯¯¯| |¯¯¯     |¯¯|          ")
   escreval("         |  |___   |___   -  |   |  |___| |___       /           ")
   escreval("         |  |          |     |¯¯¯|  |         |     /            ")
   escreval("         |  |___    ___|     |   |  |      ___|    /___          ")
   escreval()
   escreval("=================================================================")
   escreval("* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *")
   escreval("")
   
   timer(3000)
   limpatela
   timer(0)
   
   // -------- Tela de notas importantes do programa -------- //

   para temporizador de 10 ate 0 passo -1 faca
     escreval("NOTAS IMPORTANTES!!!")
     escreval(" - O visualG tem apresentado alguns cortes nas exibições das")
     escreval("   informações.")
     escreval(" - Para corrigir esses erros, basta aumentar um pouco o tamanho")
     escreval("   da tela e a sentença já aparece corretamente.")
     escreval(" - Caso encontre qualquer erro, favor entrar em contato com o")
     escreval("   desenvolvedor: luizfm.developer@gmail.com")
     escreval()
     escreval()
     escreval()
     escreval()
     timer(700)
     escreval(temporizador)
     timer(0)
     limpatela
   fimpara

   limpatela
   
   // ------ Tela de carregamento da sessão ------ //
   
   escreval("                              ** ")
   escreval("                             *  0")
   escreval("                              ** ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   timer(1000)
   timer(0)
   limpatela
   
   escreval("                              ** ")
   escreval("                             *  *")
   escreval("                              *0 ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   timer(1000)
   timer(0)
   limpatela
   
   escreval("                              ** ")
   escreval("                             *  *")
   escreval("                              0* ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   timer(1000)
   timer(0)
   limpatela
   
   escreval("                              ** ")
   escreval("                             0  *")
   escreval("                              ** ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   timer(1000)
   timer(0)
   limpatela
   escreval("                              0* ")
   escreval("                             *  *")
   escreval("                              ** ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   timer(1000)
   timer(0)
   limpatela
   
   escreval("                              *0 ")
   escreval("                             *  *")
   escreval("                              ** ")
   escreval()
   escreval()
   escreval("              Aguarde enquanto carregamos o sistema")
   limpatela

   escreval()
   escreval("Escolha uma das opções de algorítimos do menu abaixo:")
   escreval()
   escreval("|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|")
   escreval("| 1 - Imposto de Renda               |")
   escreval("| 2 - Controle Acadêmico             |")
   escreval("| 3 - Eleição para Presidente        |")
   escreval("| 4 - Cálculo do Consumo de Energia  |")
   escreval("|____________________________________|")
   escreval("")
   
   // Ao escolher uma das opções acima, o usuário será direcionado ao módulo
   // selecionado.

   leia(opcaoAlgoritimo)
   
   // Validação para acessar um módulo válido
   
   enquanto (opcaoAlgoritimo <= 0) ou (opcaoAlgoritimo > 4) faca
     escreval("Por favor, digite um número válido entre 1 e 4")
     leia(opcaoAlgoritimo)
   fimenquanto
   
   
   timer(2000)
   limpatela
   timer(0)
   
   
   // De acordo com a escolha do usuário, o algorítimo X da APS será executado.
   
   se (opcaoAlgoritimo = 1) entao
   
      // Inicia-se perguntando se o trabalhador é assalariado ou com cateira
      // assinada.

      escreval("Para o calculo do imposto de renda pessoa física, responda abaixo: ")
      escreval("Você é trabalhador assalariado? (S/N) ")
      leia (resposta)
      resposta <- maiusc(resposta)
      
      // A resposta deve ser S ou N, e para tal, temos um validação que impede
      // o avanço do usuário enquanto não selecionar uma das opções válidas.
      
      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse
      
      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra válida. 'S' para sim ou 'N' para não.")
        leia(resposta)
        resposta <- maiusc(resposta)
        
        se (resposta = "S") ou (resposta = "N") entao
          verificacaoDeResposta <- 1
        senao
          verificacaoDeResposta <- 0
        fimse
      fimenquanto
      
      // Se a resposta for 'S' então será perguntado o rendimento bruto anual
      // dos salários do usuário
      
      se (resposta = "S") entao
        enquanto (confirmar <> "S") faca
           escreval("Por favor, digite o rendimento BRUTO ANUAL de salários")
           leia(salarioBrutoAnual)

           escreval("Você ganhou R$", salarioBrutoAnual," em um ano de salário?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
        fimenquanto
      fimse
      
      // Caso a resposta seja 'N', ainda assim demonstrateremos que adicionamos
      // R$0,00 a memória de cálculo, para que o usuário não pense que estamos
      // adicionando valores a mais na sua declaração de imposto de renda.
      
      escreval("O valor de R$", salarioBrutoAnual," foi adicionado a memória.")
      
      timer(2000)
      limpatela
      timer(0)
      
      //Seção que pergunta sobre a adição de outros rendimentos
      
      escreval("Há subitens de declaração além dos salários? ex:")
      escreval("Aluguéis, vendas de imóveis, investimentos...")
      escreval("Digite 'S' para confirmar ou 'N' para seguir adiante")
      leia(resposta)
      resposta <- maiusc(resposta)
      
      // Outra validação de resposta para poder prosseguir na aplicação.
      
      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse

      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra válida. 'S' para sim ou 'N' para não.")
        leia(resposta)
        resposta <- maiusc(resposta)

        se (resposta = "S") ou (resposta = "N") entao
          verificacaoDeResposta <- 1
        senao
          verificacaoDeResposta <- 0
        fimse
      fimenquanto
      
      // Atribuímos "N" a variável confirmar para reaproveitá-la logo abaixo
      // para confirmação.
      
      confirmar <- "N"
      
      // Caso a resposta seja 'S', iremos apresentar uma lista de possíveis
      // atividades que representam rendimentos tributáveis, os quais o usuário
      // deverá declarar

      se (resposta = "S") entao
        enquanto (confirmar <> "S") faca
           escreval("Para seu auxílio, abaixo a lista de itens tributáveis")
           escreval("Segundo a Receita, são obrigados a declarar o Imposto de")
           escreval("Renda os contribuintes que:")
           
           // Lista de itens tributáveis, pessoa física

           escreval(" - Receberam rendimentos isentos, não tributáveis ou ")
           escreval("   tributados exclusivamente na fonte (por exemplo: ")
           escreval("   indenizações trabalhistas, caderneta de poupança ou")
           escreval("   doações) em valor superior a R$ 40 mil.")
           
           escreval(" - Obtiveram, em qualquer mês, ganhos na venda de bens ou")
           escreval("   direitos sujeitos à incidência de Imposto de Renda, como")
           escreval("   imóveis vendidos com lucro.")
           
           escreval(" - Realizaram operações em bolsas de valores, de")
           escreval("   mercadorias, de futuros e assemelhadas (investimentos).")
           
           escreval(" - Tiveram, no ano anterior, receita bruta em valor")
           escreval("   superior a R$ 142.798,50 em atividade rural.")
           
           escreval(" - Tinham, em 31 de dezembro do ano anterior, a posse ou a")
           escreval("   propriedade de bens ou direitos, inclusive terra nua")
           escreval("   de valor total superior a R$ 300 mil.")
           
           escreval(" - Passaram à condição de residentes no Brasil em qualquer")
           escreval("   mês e, nessa condição, encontravam-se em 31 de dezembro")
           escreval("   do ano anterior.")

           escreval("Por favor, digite a soma bruta desses rendimentos acima: ")
           leia(rendimentosBrutoAnual)

           escreval("Você ganhou R$", rendimentosBrutoAnual," em um ano?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
        fimenquanto
        
        // Então, após declaração de valor, exibimos o valor que foi adicionado
        // a memória de cálculo.
        
        escreval("O valor de R$", rendimentosBrutoAnual," foi adicionado a memória.")
      fimse
      
      timer(2000)
      limpatela
      timer(0)
      
      
      //Seção que pergunta sobre despesas
      
      escreval("Há a possibilidade de declarar despesas para redução do valor")
      escreval("a ser pago. Ex: Gasto com dependentes, saúde, educação...")
      escreval("Digite 'S' para confirmar ou 'N' para seguir adiante")
      leia(resposta)
      resposta <- maiusc(resposta)
      
      // Novamente validações para evitar erros na aplicação
      
      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse

      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra válida. 'S' para sim ou 'N' para não.")
        leia(resposta)
        resposta <- maiusc(resposta)

        se (resposta = "S") ou (resposta = "N") entao
          verificacaoDeResposta <- 1
        senao
          verificacaoDeResposta <- 0
        fimse
      fimenquanto
      
      // Reaproveitamento de variável

      confirmar <- "N"
      
      // Caso a resposta do usuário seja 'S' apresenta-se uma lista de possíveis
      // gastos que podem ser deduzidos do rendimento anual, a fim de reduzir
      // o montante de imposto a ser pago.
      
      se (resposta = "S") entao
        enquanto (confirmar <> "S") faca
           escreval("Abaixo, uma lista com explicações básicas do que pode ser")
           escreval("considerado despesas a serem reduzidas do IRPF")

           // Lista de itens considerados despesas de dedução

           escreval(" - Pensão alimentícia, sendo valor valor integral, caso haja")
           escreval("   comprovação judicial.")

           escreval(" - Previdência, sendo valor integral, caso previdência da")
           escreval("   União, e até 12% caso previdência privada.")

           escreval(" - Gasto com dependentes, sendo cônjuge; filhos ou enteados até 24 anos")
           escreval("   caso estejam em regularmente matrículados ou até os 21 anos")
           escreval("   caso não, até um valor máximo de R$2.275.08 por dependente")

           escreval(" - Educação, até 24 anos, até um máximo de R$3.561,50 por")
           escreval("   por dependente.")

           escreval(" - Saúde, sendo valor integral. Válido para consultas médicas")
           escreval("   dentistas, psicólogos, fisioterapeutas, terapeutas ocupacionais")
           escreval("   fonoaudiólogos, hospitais, além de exames laboratoriais")
           escreval("   serviços radiológicos, aparelhos ortopédicos e próteses")
           escreval("   ortopédicas e dentárias.")

           escreval("Por favor, digite a soma bruta dessas despesas acima: ")
           leia(despesas)

           escreval("Você gastou R$", despesas," em um ano?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
         fimenquanto
         
         // Após confirmação, exibe-se o valor de despesas ao usuário
         
         escreval("O valor de R$", despesas," foi adicionado a memória.")
      fimse
        
      timer(2000)
      limpatela
      timer(0)

      
         // ------ Tela de carregamento da sessão ------ //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela

      // Após carregamento do sistema, exibe-se a tabela de base de cálculo x
      // alíquota x parcela a deduzir do IRPF, para facilitar comparação dos
      // rendimentos anuais do usuário

      escreval("Abaixo, há a representação da tabela de imposto de renda.")
      escreval("")
      escreval("Nela é possível ver a base de cálculo, aliquota e parcela a.")
      escreval("reduzir do imposto de renda (valor fixo).")
      escreval("")
      
      escreval("===================================================================")
      escreval("| BASE DE CÁLCULO (R$) | ALÍQUOTA (%) | PARCELA A DEDUZIR DO IRPF |")
      escreval("|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|")
      escreval("|     Até 1.903,98     |    isento    |           isento          |")
      escreval("|De 1.903,99 à 2.826,65|      7,5%    |          R$ 142,80        |")
      escreval("|De 2.826,66 à 3.751,05|     15,0%    |          R$ 354,80        |")
      escreval("|De 3.751,06 à 4.664,68|     22,5%    |          R$ 636,13        |")
      escreval("|  Acima de 4.664,68   |     27,5%    |          R$ 869,36        |")
      escreval(" ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ ")

      rendimentosTotais <- salarioBrutoAnual + rendimentosBrutoAnual
      baseValorTotal <- (salarioBrutoAnual + rendimentosBrutoAnual - despesas)
      baseCalculoTotal <- baseValorTotal / 12
      
      // Uso de uma estrutura encadeada para definir o valor de alíquota //
      
      se (baseCalculoTotal > 4664.68) entao
        aliquota <- 27.5
      senao
        se(baseCalculoTotal > 3751.05) entao
          aliquota <- 22.5
        senao
         se (baseCalculoTotal > 2826.65) entao
           aliquota <- 15.0
         senao
           se (baseCalculoTotal > 1903.98) entao
             aliquota <- 7.5
           senao
             aliquota <- 0
           fimse
         fimse
        fimse
      fimse
      
      // ------------ Calculo do total de IRPF a ser pago -------- //
      
      se (baseCalculoTotal <= 1903.98 ) entao
        totalIRPF <- 0
      senao
        se (baseCalculoTotal > 1903.98) e (baseCalculoTotal <= 2826.65) entao
          totalIRPF <- (baseCalculoTotal * (7.5/100) - 142.80) * 12
        senao
          se (baseCalculoTotal > 2826.65) e (baseCalculoTotal <= 3751.05) entao
            totalIRPF <- (baseCalculoTotal * (15/100) - 354.80) * 12
          senao
            se (baseCalculoTotal > 3751.05) e (baseCalculoTotal <= 4664.68) entao
              totalIRPF <- (baseCalculoTotal * (22.5/100) - 636.16) * 12
            senao
              totalIRPF <- (baseCalculoTotal * (27.5/100) - 869.36) * 12
            fimse
          fimse
        fimse
      fimse
      
      // Por fim, exibe-se um relatório com as informações gerais de: redimentos
      // despesas; onde o usuário se enquandra na base de cálculo; o montante a
      // ser pago a União e seu rendimento líquido anual.
      
      se (aliquota = 0) entao
        escreval("Com base na tabela acima, seus rendimentos, divididos pelos")
        escreval("meses do ano, se enquadram em isento.")
      senao
        escreval("Seu rendimento anual, salário + rendimentos tributáveis,")
        escreval("foi: R$", rendimentosTotais)
        escreval("")
        escreval("Já suas despesas foram de: R$", despesas)
        escreval("")
        escreval("Deste modo, a base de valor total é: R$", baseValorTotal)
        escreval("este valor dividido pelos meses do ano é de: R$", baseCalculoTotal:2:2)
        escreval("")
        escreval("Com base na tabela acima, seus rendimentos - suas despesas")
        escreval("divididos pelos meses do ano, se enquadram em", aliquota,"%.")
      fimse
      
      escreval("")
      escreval("Logo, o valor total a pagar, deduzindo a parcela única do IRPF.")
      escreval("Será de R$", totalIRPF:2:2,".")
      
      rendimentoLiquido <- baseValorTotal - totalIRPF
      
      escreval("")
      escreval("Seu rendimento liquido foi de: R$", rendimentoLiquido:2:2,".")
   
   fimse
   se (opcaoAlgoritimo = 2) entao

      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("##########      #############        ###      ####      #########")
      escreval("##########  ####################  ######   #######   ############")
      escreval("##########     ####       ######  ######     #####   ############")
      escreval("##########  ####################  ######   #######   ############")
      escreval("##########      ################  ######      ####      #########")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")
      escreval("#################################################################")

      timer(3000)
      limpatela
      timer(0)

         // ------ Tela de carregamento da sessão ------ //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela

      // Primeiro acesso. Incluíndo dados da instituição e disciplina para controle


      escreval("===========    E-TEC - Education Tecnology V 1.0.0 ®    =========")
      escreval("")
      escreval("Por favor, digite os dados para inicialização do software")
      escreval("")

      // Introdução do nome da instituição de ensino e validação para evitar
      // erros na digitação da mesma

      enquanto (confirmacao <> "S") faca
        escreva("Nome da instituição: ")
        leia(nomeInstituicao)
        escreval("")
        escreval("O nome da instituição apresentado ao longo do software será: ")
        escreval(nomeInstituicao, ". Deseja confirmar e prosseguir? (S/N)")
        leia(confirmacao)
        confirmacao <- maiusc(confirmacao)
      fimenquanto

      escreval("")
      
      // Reaproveitamento da variável confirmacao.

      confirmacao <- "N"
      
      // Inclusão da quantidade de dias letivos para availiar posteriormente
      // a frequência dos alunos nas aulas. Também utiliza validação para evitar
      // erros de digitaçao
      
      enquanto (confirmacao <> "S") faca
        escreva("Quantidade de dias letivos: ")
        leia(diasLetivos)
        escreval("")
        escreval("A quantidade de dias letivos para verficação de frequência será")
        escreval("de: ", diasLetivos, " dias. Deseja confirmar? (S/N)")
        leia(confirmacao)
        confirmacao <- maiusc(confirmacao)
      fimenquanto

      escreval("")
      
      // Reaproveitamento da variável confirmacao.

      confirmacao <- "N"
      
      // Introdução da disciplina que será feito o controle e utilização de
      // validação para evitar erros de digitação.
      
      enquanto (confirmacao <> "S") faca
        escreva("Disciplina para controle acadêmico: ")
        leia(disciplina)
        escreval("")
        escreval("O nome da disciplina apresentado ao longo do software será: ")
        escreval(disciplina, ". Deseja confirmar e prosseguir? (S/N)")
        leia(confirmacao)
        confirmacao <- maiusc(confirmacao)
      fimenquanto

      timer(2000)
      limpatela
      timer(0)


      // Utilizando para e escolha-caso para simular carregamento de variáveis.

        para carregador de 0 ate 100 passo 20 faca
            escolha (carregador)
              caso 0
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[          ] - 0%")
                timer(700)
                timer(0)

              caso 20
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[==        ] - 20%")
                timer(700)
                timer(0)

              caso 40
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[====      ] - 40%")
                timer(700)
                timer(0)

              caso 60
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[======    ] - 60%")
                timer(700)
                timer(0)

              caso 80
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[========  ] - 80%")
                timer(700)
                timer(0)

              caso 100
                escreval("Nome da instituição: ", nomeInstituicao)
                escreval("Quantidade de dias letivos: ", diasLetivos)
                escreval("Disciplina a ser controlada: ", disciplina)
                escreval("")
                escreval("Configurando variáveis. Sofware inicializando")
                escreval("")

                escreval("[==========] - 100%")
                timer(700)
                timer(0)

            fimescolha
          limpatela
        fimpara

      // Declaração de variáveis no escopo global para realização de somas.

      somaGeralMediaNotas <- 0
      alunosAprovados <- 0
      alunosReprovados <- 0
      
      // Inicialização do sistema e demonstração dos dois módulos de controle:
      // Média simples + frequência;
      // Média ponderada + frequência;
      
      escreval("Bem-vindo ao controle acadêmico da ", nomeInstituicao)
      escreval("")
      escreval("Para a disciplina ", disciplina," contamos com duas opções de ")
      escreval("controle: ")
      escreval("1 - Média simples + Frequência")
      escreval("2 - Média ponderada + Frequência")
      escreval("")

      // Escolha do módulo para controle

      escreval("Por favor, escolha uma das opções acima pelo seu número")
      leia(escolhaControleModulo)
      
      // Validação para digitar módulo existente

      enquanto (escolhaControleModulo > 2) ou (escolhaControleModulo < 1) faca
        escreval("O número digitado é inválido. Por favor, digite 1 ou 2")
        leia(escolhaControleModulo)
      fimenquanto

      escreval("")

      timer(3000)
      limpatela
      timer(0)

         // ------ Tela de carregamento da seção ------ //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela

      // Caso o usuário escolha o módulo 1, então o controle será feito por
      // Média simples

      se (escolhaControleModulo = 1) entao
       escreval("Por favor, digite o número de provas e trabalhos aplicados, não")
       escreva("superior a 15: ")
       leia(numeroProvasTrabalhos)

       // Soma-se todas as provas e trabalhos, pois não terão pesos diferentes
       
       // Utiliza-se de uma validação para que não se digite mais do que 15
       // Provas + Trabalhos, ou menos do que 1

       enquanto (numeroProvasTrabalhos < 1) ou (numeroProvasTrabalhos > 15) faca
         escreva("Por favor, digite um número entre 0 e 15.")
         leia(numeroProvasTrabalhos)
       fimenquanto

       escreval("")

       // Estabelece-se a quantidade de alunos da disciplina.

       escreva("Agora, digite o numero de alunos da disciplina, não maior que 40")
       leia(quantidadeAlunos)

       // Não podendo ser superior a 40 alunos ou menor que 1 aluno. Para tal
       // Temos uma validação abaixo.

       enquanto (quantidadeAlunos < 1) ou (quantidadeAlunos > 40) faca
         escreva("Por favor, digite um número entre 0 e 40.")
         leia(quantidadeAlunos)
       fimenquanto

       // Aqui, faz-se um laço de repetição para a quantidade de alunos digitada

       para aluno de 1 ate quantidadeAlunos faca
         somaNotaAluno <- 0
         escreval("")
         escreval("Escreva as notas do ", aluno,"° aluno")

         // E aqui um laço de repetição para a quantidade de Provas e trabalhos

         para notas de 1 ate numeroProvasTrabalhos faca
           escreva(notas,"° prova / trabalho: ")
           leia(nota)

           // Notas não pode ser menores que 0 ou superiores a 10

           enquanto (nota < 0) ou (nota > 10) faca
             escreval("Por favor, digite um valor entre 0 e 10 para as notas.")
             leia(nota)
           fimenquanto

           // Soma-se a nota do aluno para poder dividir pela quantidade de
           // Provas + Trabalhos aplicados

           somaNotaAluno <- somaNotaAluno + nota
         fimpara

         // Aqui, verifica-se a quantidade de faltas do aluno na disciplina.

         escreval("")
         escreval("Digite a quantidade de faltas deste aluno.")
         leia(faltasAluno)
         
         // Não podendo ser menor que 0 ou maior que a quantidade de dias
         // letivos da disciplina, informado na inicialização do software
         
         enquanto (faltasAluno < 0) ou (faltasAluno > diasLetivos) faca
           escreval("Por favor, digite um número de faltas entre 0 e", diasLetivos)
           leia(faltasAluno)
         fimenquanto
         
         // Transforma-se em porcentagem o valor.

         frequencia <- (diasLetivos - faltasAluno) / diasLetivos * 100

         // Realiza-se a operação de verificação da média final do aluno

         mediaFinal <- somaNotaAluno / numeroProvasTrabalhos
         somaGeralMediaNotas <- somaGeralMediaNotas + mediaFinal
         escreval("")

         // Verificação da Aprovação ou Reprovação do Aluno

         se mediaFinal >= 6 e frequencia >= 75 entao
           escreval("Este aluno está APROVADO!")
           escreval("Média final: ", mediaFinal:2:2)
           escreval("Frequência: ", frequencia:2:2,"%")
           alunosAprovados <- alunosAprovados + 1
         senao
           se mediaFinal >= 6 e frequencia < 75 entao
             escreval("Este aluno está REPROVADO devido a sua FREQUÊNCIA")
             escreval("Média final: ", mediaFinal:2:2)
             escreval("Frequência: ", frequencia:2:2,"%")
             alunosReprovados <- alunosReprovados + 1
           senao
             se mediaFinal < 6 e frequencia >= 75 entao
               escreval("Este aluno está REPROVADO devido a sua MÉDIA FINAL")
               escreval("Média final: ", mediaFinal:2:2)
               escreval("Frequência: ", frequencia:2:2,"%")
               alunosReprovados <- alunosReprovados + 1
             senao
               escreval("Este aluno está REPROVADO por FREQUÊNCIA e MÉDIA FINAL")
               escreval("Média final: ", mediaFinal:2:2)
               escreval("Frequência: ", frequencia:2:2,"%")
               alunosReprovados <- alunosReprovados + 1
             fimse
           fimse
         fimse
         
         // Estabelece-se as informações gerais do alunos desta disciplina
         // para ser exibida posteriormente.

         mediaTurma <- somaGeralMediaNotas / quantidadeAlunos
         percentualAprovados <- alunosAprovados / quantidadeAlunos * 100
         percentualReprovados <- alunosReprovados / quantidadeAlunos * 100

         // Pergunta-se se o usuário deseja limpar a tela antes de verificar tais
         // informações finais.

         escreval("")
         escreval("Deseja limpar a tela antes de exibir as informações gerais")
         escreval("finais? (S/N)")
         leia(limparTelaParaGerais)
         limparTelaParaGerais <- maiusc(limparTelaParaGerais)

         se(limparTelaParaGerais = "S") entao
           timer(2000)
           limpatela
           timer(0)
         fimse

         escreval("")
         escreval("================================================================")
         escreval("|              ", nomeInstituicao," --- Disciplina: ", disciplina)
         escreval("================================================================")
         escreval("")
         escreval("A média final da turma foi: ", mediaTurma:2:2)
         escreval("O percentual de alunos aprovados foi: ", percentualAprovados:2:2)
         escreval("O percentual de alunos reprovados foi: ", percentualReprovados:2:2)

      // -------------- Calculo por media ponderada ------------------ //

      senao

       // Caso o usuário escolha o módulo 2, será realizado o controle por média
       // ponderada
       
       // Aqui, iniciam-se algumas variáeis globais para facilitação das somas
       // de médias.

       mediaProvas <- 0
       mediaFinal <- 0

       // diferente da média simples, aqui, solicitamos o números exatos de provas
       // e trabalhos.

       escreval("Por favor, digite o número de provas e trabalhos aplicados, não")
       escreval("superior a 15.")
       escreva("Provas: ")
       leia(numeroProvas)
       escreva("Trabalhos: ")
       leia(numeroTrabalhos)

       // Faz-se uma checagem para verificar se a soma dos valores informados
       // não é inferior a 1 ou superior a 15.

       enquanto (numeroProvas + numeroTrabalhos < 1) ou (numeroProvas + numeroTrabalhos > 15) faca
         escreval("Por favor, digite um números que somados deem entre 0 e 15.")
         escreva("Provas: ")
         leia(numeroProvas)
         escreva("Trabalhos: ")
         leia(numeroTrabalhos)
       fimenquanto

       escreval("")

       // Lê-se a quantidade de alunos da disciplina.

       escreval("Agora, digite o numero de alunos da disciplina, não maior que 40")
       leia(quantidadeAlunos)

       // Novamente uma checagem para verificar se não foram digitados valores
       // inválidos

       enquanto (quantidadeAlunos < 1) ou (quantidadeAlunos > 40) faca
         escreval("Por favor, digite um número entre 0 e 40.")
         leia(quantidadeAlunos)
       fimenquanto

       // Por fim, cria-se um laço de repetição para a quantidade informada de
       // alunos

       para aluno de 1 ate quantidadeAlunos faca
         somaNotaAlunoProvas <- 0
         somaNotaAlunoTrabalhos <- 0
         escreval("")
         escreval("Escreva as notas de PROVAS do ", aluno,"° aluno")

         // E um outro laço para a quantidade de provas, junto a uma validação
         // de notas não inferiores a 0 ou maiores que 10.

         para notas de 1 ate numeroProvas faca
           escreva("Nota", notas,": ")
           leia(nota)

           enquanto (nota < 0) ou (nota > 10) faca
             escreval("Por favor, digite um valor entre 0 e 10 para as notas.")
             leia(nota)
           fimenquanto

           somaNotaAlunoProvas <- somaNotaAlunoProvas + nota
         fimpara

         escreval("")
         escreval("Escreva as notas de TRABALHOS do ", aluno,"° aluno")

         // A mesma lógica de provas para os trabalhos.

         para notas de 1 ate numeroTrabalhos faca
           escreva("Nota", notas,": ")
           leia(nota)

           enquanto (nota < 0) ou (nota > 10) faca
             escreval("Por favor, digite um valor entre 0 e 10 para as notas.")
             leia(nota)
           fimenquanto

           somaNotaAlunoTrabalhos <- somaNotaAlunoTrabalhos + nota
         fimpara

         // informa-se a quantidade de faltas do aluno na disciplina.

         escreval("")
         escreval("Digite a quantidade de faltas deste aluno.")
         leia(faltasAluno)
         
         // Não podendo ser menor que 0 ou maior que a quantidade de dias letivos
         
         enquanto (faltasAluno < 0) ou (faltasAluno > diasLetivos) faca
           escreval("Por favor, digite um número de faltas entre 0 e", diasLetivos)
           leia(faltasAluno)
         fimenquanto
         
         // Operação para determinar o percentual de frequência do aluno.
         
         frequencia <- (diasLetivos - faltasAluno) / diasLetivos * 100

         // Calculo das médias de provas e médias de trabalhos.

         mediaProvas <- somaNotaAlunoProvas / numeroProvas
         mediaTrabalhos <- somaNotaAlunoTrabalhos / numeroTrabalhos

         // Aqui, um ponto IMPORTANTE: Caso o aluno não alcance média em provas
         // superior a 6, ele estará reprovado automaticamente. Porém, é
         // necessário calcula sua média final pois ela irá compor a média global
         // da turma no resumo geral da disciplina posteriormente.
         
         // Aqui as médias são ponderadas, onde as provas tem pesos maiores na nota
         // do que os trabalhos.

         se mediaProvas < 6 entao
           escreval("Aluno não alcançou a média 6 em provas. Logo, está REPROVADO")
           escreval("Média provas: ", mediaProvas:2:2)
           mediaFinal <- (0.8 * (mediaProvas)) + (0.2 * (mediaTrabalhos))
           alunosReprovados <- alunosReprovados + 1
           somaGeralMediaNotas <- somaGeralMediaNotas + mediaFinal
         senao
           mediaFinal <- (0.8 * (mediaProvas)) + (0.2 * (mediaTrabalhos))
           somaGeralMediaNotas <- somaGeralMediaNotas + mediaFinal
           escreval("")

         // Verificação da Aprovação ou Reprovação do Aluno

           se (mediaFinal >= 6) e (frequencia >= 75) entao
             escreval("Este aluno está APROVADO!")
             escreval("Média final: ", mediaFinal:2:2)
             escreval("Frequência: ", frequencia:2:2,"%")
             alunosAprovados <- alunosAprovados + 1
           senao
             se (mediaFinal >= 6) e (frequencia < 75) entao
               escreval("Este aluno está REPROVADO devido a sua FREQUÊNCIA")
               escreval("Média final: ", mediaFinal:2:2)
               escreval("Frequência: ", frequencia:2:2,"%")
               alunosReprovados <- alunosReprovados + 1
             senao
               se (mediaFinal < 6) e (frequencia >= 75) entao
                 escreval("Este aluno está REPROVADO devido a sua MÉDIA FINAL")
                 escreval("Média final: ", mediaFinal:2:2)
                 escreval("Frequência: ", frequencia:2:2,"%")
                 alunosReprovados <- alunosReprovados + 1
               senao
                 escreval("Este aluno está REPROVADO por FREQUÊNCIA e MÉDIA FINAL")
                 escreval("Média final: ", mediaFinal:2:2)
                 escreval("Frequência: ", frequencia:2:2,"%")
                 alunosReprovados <- alunosReprovados + 1
               fimse
             fimse
           fimse
         fimse
       fimpara
       
       // Operações para obtenção das informações gerais da turma

       mediaTurma <- somaGeralMediaNotas / quantidadeAlunos
       percentualAprovados <- alunosAprovados / quantidadeAlunos * 100
       percentualReprovados <- alunosReprovados / quantidadeAlunos * 100

       // Pergunta-se se o usuário deseja limpar a tela antes de exibir tais
       // informações

       escreval("")
       escreval("Deseja limpar a tela antes de exibir as informações gerais")
       escreval("finais? (S/N)")
       leia(limparTelaParaGerais)
       limparTelaParaGerais <- maiusc(limparTelaParaGerais)

       se(limparTelaParaGerais = "S") entao
         timer(2000)
         limpatela
         timer(0)
       fimse

       // E então, exibe-se as informações gerais da instituição, disciplina e
       // turma, com a quantidade de aprovados e reprovados e a média final.

       escreval("")
       escreval("================================================================")
       escreval("|              ", nomeInstituicao," --- Disciplina: ", disciplina)
       escreval("================================================================")
       escreval("")
       escreval("A média final da turma foi: ", mediaTurma:2:2)
       escreval("O percentual de alunos aprovados foi: ", percentualAprovados:2:2,"%")
       escreval("O percentual de alunos reprovados foi: ", percentualReprovados:2:2, "%")


      fimse
   
   fimse
   se (opcaoAlgoritimo = 3) entao
   
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


     // Tela de inicialização do sistema eletrônico.


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

         // Utilização escolha para verificar a opção digitada como voto
         // Caso o voto seja em um candidato válidado, soma-se +1 voto para
         // este candidato. Caso seja o numeral 5, o voto é contabilizado como
         // em branco. Caso seja qualquer outro valor maior que 5 ou menor que
         // 1, o voto é contabilizado como nulo

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

       // A cada voto efetuado e confirmado, pergunta-se pela finalização da
       // seção eleitoral e exibição dos resultados

       escreval("Deseja finalizar as eleições e exibir os resultados? (S/N)")
       leia(fimEleicao)
       fimEleicao <- maiusc(fimEleicao)

       // Limpa-se a tela para o próximo usuário ou para exibição dos resultados

       timer(1000)
       limpatela
       timer(0)

     ate(fimEleicao = "S")

     // Iniciamos os totaisDeVotos já com os votosEmBranco e votosNulos para
     // somente somar posteriormente os votos nos candidatos.

     totalDeVotos <- votosEmBranco + votosNulos

     // Para cada candidato, soma-se seus votos ao totalDeVotos

     para quantidadeVotos de 1 ate 4 faca
       totalDeVotos <- totalDeVotos + vetorVotosPorCandidato[quantidadeVotos]
     fimpara

     // Declaração de duas variáveis globais. Primeiro o candidato com maior
     // quantidade de votos e uma outra com empate Votos

     candidatoMaiorQuatidadeVotos <- -1
     empateVotos <- 0

     // Para cada candidato, verificamos quantos votos estes receberam, e então
     // definimos a posicao do vetor onde encontra-se a maior quantidade de votos
     // e por consequência, o candidato. Todavia, caso dois candidatos tenham o
     // mesmo número de votos, haverá um empate, e a variável empateVotos é que
     // irá definir isto, caso ela seja maior que 1.

     para candidato de 1 ate 4 faca
       se (vetorVotosPorCandidato[candidato] = candidatoMaiorQuatidadeVotos) entao
         empateVotos <- empateVotos + 1
       fimse

       se (vetorVotosPorCandidato[candidato] > candidatoMaiorQuatidadeVotos) entao
         candidatoMaiorQuatidadeVotos <- vetorVotosPorCandidato[candidato]
         posicaoVetorVencedor <- candidato
       fimse
     fimpara

     // Em seguida, apresenta-se o resultado geral de todos os candidatos

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

     // Aponta-se o percentual dos votos do vencedor

     percentualVotosVencedor <- vetorVotosPorCandidato[posicaoVetorVencedor] / totalDeVotos * 100

     // Apresenta-se um primeiro resumo geral das eleições.

     escreval("A quantidade possível de eleitores era de: ", quantidadePossiveisEleitores)
     escreval("O total de votos foi de: ", totalDeVotos," votos")
     escreval("O total de votos em BRANCO foi de: ", votosEmBranco," votos")
     escreval("O total de votos NULOS foi de: ", votosNulos," votos")
     escreval("")

     // E complementa-se esse resumo de acordo com a variável empateVotos, onde
     // se esta for maior que 1, declara-se empate e uma nova eleição deverá ser
     // feita ou se menor que 1, exibe-se o nome, percentual e quantidade de votos
     // do candidato vencedor.

     se(empateVotos > 0 ) entao
       escreval("Houve um empate entre candidatos. Com isso, a eleição será refeita")
     senao
       escreval("O candidato vencedor das eleições foi o candidato: ", vetorNomeCandidatos[posicaoVetorVencedor])
       escreval("Com um total de: ", vetorVotosPorCandidato[posicaoVetorVencedor]," votos")
       escreval("ou ", percentualVotosVencedor:2:2,"% do total de votos!")
     fimse
   
   
   fimse
   se (opcaoAlgoritimo = 4) entao
   
     // Inicialização de variáveis estáticas, que não precisaram ser definidas
     // pelo usuário
   
     valorKiloWattHora <- 0.45

     vetorUsuarios[1] <- "Joao"
     vetorUsuarios[2] <- "Maria"
     vetorUsuarios[3] <- "Paulo"
     vetorUsuarios[4] <- "Patricia"
     vetorUsuarios[5] <- "Luiz"
     vetorUsuarios[6] <- "Leticia"
     vetorUsuarios[7] <- "Diego"
     vetorUsuarios[8] <- "Eliza"
     vetorUsuarios[9] <- "Maicon"
     vetorUsuarios[10] <- "Marisa"

     vetorEquipamentos[1] <- "Lampada"
     vetorEquipamentos[2] <- "Geladeira"
     vetorEquipamentos[3] <- "Televisao"
     vetorEquipamentos[4] <- "Computador"
     vetorEquipamentos[5] <- "Chuveiro"
     vetorEquipamentos[6] <- "Ventilador"
     vetorEquipamentos[7] <- "Ar-condicionado"
     vetorEquipamentos[8] <- "Secador de cabelo"
     vetorEquipamentos[9] <- "Microondas"
     vetorEquipamentos[10] <- "Video game"

   // Potencia em Watts retirada de www.eflul.com.br/consumidores/tabela-de-consumo

     vetorPotenciaEquipamentos[1] <- 40
     vetorPotenciaEquipamentos[2] <- 500
     vetorPotenciaEquipamentos[3] <- 1400
     vetorPotenciaEquipamentos[4] <- 300
     vetorPotenciaEquipamentos[5] <- 5500
     vetorPotenciaEquipamentos[6] <- 100
     vetorPotenciaEquipamentos[7] <- 1400
     vetorPotenciaEquipamentos[8] <- 1000
     vetorPotenciaEquipamentos[9] <- 2000
     vetorPotenciaEquipamentos[10] <- 20

     // ------- Tela de apresentação do programa Energia Para Todos -------- //


     escreval("##################################################################")
     escreval("#     ##  ####  ##     ##    ###       ##  ##       ##  #####  ###")
     escreval("#  #####   ###  ##  #####  #  ##  #######  ##   #   ##  #####  ###")
     escreval("#   ####    ##  ##   ####    ###       ##  ##       ##  #####  ###")
     escreval("#  #####  #  #  ##  #####   ####  ###  ##  ##  ###  ##  #####  ###")
     escreval("#     ##  ##    ##     ##  #  ##       ##  ##  ###  ##    ###    #")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

     escreval("##################################################################")
     escreval(" @@@@@  @@    @@  @@@@@  @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@@   @@  @@     @@ @@  @@       @@  @@@ @@@  @@     @@   ")
     escreval(" @@@    @@@@  @@  @@@    @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@ @@ @@  @@     @@@    @@   @@  @@  @@   @@  @@     @@   ")
     escreval(" @@@@@  @@  @@@@  @@@@@  @@ @@  @@@@@@@  @@  @@   @@  @@@@   @@@@ ")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

       escreval("##################################################################")
     escreval("#     ##  ####  ##     ##    ###       ##  ##       ##  #####  ###")
     escreval("#  #####   ###  ##  #####  #  ##  #######  ##   #   ##  #####  ###")
     escreval("#   ####    ##  ##   ####    ###       ##  ##       ##  #####  ###")
     escreval("#  #####  #  #  ##  #####   ####  ###  ##  ##  ###  ##  #####  ###")
     escreval("#     ##  ##    ##     ##  #  ##       ##  ##  ###  ##    ###    #")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

     escreval("##################################################################")
     escreval(" @@@@@  @@    @@  @@@@@  @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@@   @@  @@     @@ @@  @@       @@  @@@ @@@  @@     @@   ")
     escreval(" @@@    @@@@  @@  @@@    @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@ @@ @@  @@     @@@    @@   @@  @@  @@   @@  @@     @@   ")
     escreval(" @@@@@  @@  @@@@  @@@@@  @@ @@  @@@@@@@  @@  @@   @@  @@@@   @@@@ ")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

       escreval("##################################################################")
     escreval("#     ##  ####  ##     ##    ###       ##  ##       ##  #####  ###")
     escreval("#  #####   ###  ##  #####  #  ##  #######  ##   #   ##  #####  ###")
     escreval("#   ####    ##  ##   ####    ###       ##  ##       ##  #####  ###")
     escreval("#  #####  #  #  ##  #####   ####  ###  ##  ##  ###  ##  #####  ###")
     escreval("#     ##  ##    ##     ##  #  ##       ##  ##  ###  ##    ###    #")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

     escreval("##################################################################")
     escreval(" @@@@@  @@    @@  @@@@@  @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@@   @@  @@     @@ @@  @@       @@  @@@ @@@  @@     @@   ")
     escreval(" @@@    @@@@  @@  @@@    @@@@   @@@@@@@  @@  @@@@@@@  @@     @@   ")
     escreval(" @@     @@ @@ @@  @@     @@@    @@   @@  @@  @@   @@  @@     @@   ")
     escreval(" @@@@@  @@  @@@@  @@@@@  @@ @@  @@@@@@@  @@  @@   @@  @@@@   @@@@ ")
     escreval("##################################################################")

     timer(2000)
     timer(0)
     limpatela

     // Introdução das informações de consumo por usuário no mês de Agosto //

     // Para cada um dos 10 usuários, pergunta-se qual a posição do equipamento
     // que o usuário utilizou durante 3 horas naquele dia.

     para posicaoUsuario de 1 ate 10 faca
       para diasAgosto de 1 ate 10 faca
       
          // Lista-se os equipamentos para facilitar a identificação

          para posicaoEquipamento de 1 ate 10 faca
            escreval(posicaoEquipamento," - ", vetorEquipamentos[posicaoEquipamento])
          fimpara
          
          // Exibe-se o dia do mês em este equipamento foi utilizado.
          
          escreval("")
          escreval("Digite o código do equipamento utilizado pelo usuário ", vetorUsuarios[posicaoUsuario])
          escreval("no", diasAgosto,"° dia de Agosto.")
          leia(codigoEquipamento)

          // Valida-se se o código do equipamento está entre 1 e 10

          escreval("")
          enquanto (codigoEquipamento < 1) ou (codigoEquipamento > 10) faca
            escreval("Por favor, digite um código entre 1 e 10")
            leia(codigoEquipamento)
            escreval("")
          fimenquanto

          // Informações gerais do consumo de energia no dia pelo equipamento
          // utilizado

          escreval("O equipamento digitado selecionado foi: ", vetorEquipamentos[codigoEquipamento])
          escreval("O consumo hora deste equipamento é de:", vetorPotenciaEquipamentos[codigoEquipamento],"watts")
          escreval("Assim, seu consumo diário (referente as 3h de uso) de energia")
          matrizConsumoDiarioEquipamentos[posicaoUsuario, diasAgosto] <- vetorPotenciaEquipamentos[codigoEquipamento] * 3
          escreval("eletrica foi de:", matrizConsumoDiarioEquipamentos[posicaoUsuario, diasAgosto],"watts")
          escreval("")
       fimpara
       escreval("-------------------------==============-------------------------")
     fimpara

      timer(2000)
      limpatela
      timer(0)

        // ---------------- Tela de carregamento da seção -------------------- //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela


     // --------- Exibir resumo das faturas no mês de Agosto ---------------- //

     // faz-se um laço de repetição para cada um dos 10 usuários

     para posicaoUsuario de 1 ate 10 faca
     
       // inciam-se variáveis locais que seram resetadas e reutilizadasa em cada
       // looping do laço para.
     
       consumoMesAgosto <- 0
       consumoKiloWattsAgosto <- 0
       consumoKiloWattsHoraAgosto <- 0

       // Soma-se o consumo do mês.

       para diasConsumo de 1 ate 10 faca
         consumoMesAgosto <- matrizConsumoDiarioEquipamentos[posicaoUsuario, diasConsumo] + consumoMesAgosto
       fimpara

       // Exibe-se a informação detalhada de consumo do usuário no mês em questão
       // como o total de Kilo Watts consumidos no mês, Kilo Watts / Hora e o
       // total a ser pago pelo usuário

       escreval("===============================================================")
       escreval("O consumo do usuário ",vetorUsuarios[posicaoUsuario]," no mês de")
       escreval("agosto foi de: ", consumoMesAgosto,"watts")

       consumoKiloWattsAgosto <- consumoMesAgosto / 1000
       consumoKiloWattsHoraAgosto <- consumoKiloWattsAgosto / 3

       escreval("---------------------------------------------------------------")
       escreval("Um total de", consumoKiloWattsAgosto,"kW foi consumido no mês")
       escreval("sendo que foram", consumoKiloWattsHoraAgosto,"kWh")

       // Matriz para comparação de consumos entre agosto e setembro para cada
       // usuário.

       matrizConsumoTotalMeses[posicaoUsuario, 1] <- consumoKiloWattsAgosto

       totalAPagar <- consumoKiloWattsAgosto * valorKiloWattHora

       escreval("Total a pagar de R$", totalAPagar:2:2)
       escreval("")
       escreval("===============================================================")
     fimpara

      timer(20000)
      timer(0)
      limpatela

        // ---------------- Tela de carregamento da seção -------------------- //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela


     // Introdução das informações de consumo por usuário no mês de Setembro //

     para posicaoUsuario de 1 ate 10 faca
       para diasSetembro de 1 ate 10 faca

          // Lista-se os equipamentos para facilitar a identificação

          para posicaoEquipamento de 1 ate 10 faca
            escreval(posicaoEquipamento," - ", vetorEquipamentos[posicaoEquipamento])
          fimpara
          
          escreval("")
          // Digita-se o código do equipamento utilizado pelo usuário durante as
          // 3 horas do dia.
       
          escreval("Digite o código do equipamento utilizado pelo usuário ", vetorUsuarios[posicaoUsuario])
          escreval("no", diasSetembro,"° dia de Setembro.")
          leia(codigoEquipamento)

          // Valida-se se o código existe, estando entre 1 e 10

          escreval("")
          enquanto (codigoEquipamento < 1) ou (codigoEquipamento > 10) faca
            escreval("Por favor, digite um código entre 1 e 10")
            leia(codigoEquipamento)
            escreval("")
          fimenquanto
          
          // Resumo do consumo do usuário no dia.

          escreval("O equipamento digitado selecionado foi: ", vetorEquipamentos[codigoEquipamento])
          escreval("O consumo hora deste equipamento é de:", vetorPotenciaEquipamentos[codigoEquipamento],"watts")
          escreval("Assim, seu consumo diário (referente as 3h de uso) de energia")
          matrizConsumoDiarioEquipamentosSetembro[posicaoUsuario, diasSetembro] <- vetorPotenciaEquipamentos[codigoEquipamento] * 3
          escreval("eletrica foi de:", matrizConsumoDiarioEquipamentosSetembro[posicaoUsuario, diasSetembro],"watts")
          escreval("")
       fimpara
       escreval("-------------------------=============--------------------------")
     fimpara

      timer(2000)
      limpatela
      timer(0)

        // ---------------- Tela de carregamento da seção -------------------- //

      escreval("                              ** ")
      escreval("                             *  0")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              *0 ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             *  *")
      escreval("                              0* ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              ** ")
      escreval("                             0  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela
      escreval("                              0* ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      timer(1000)
      timer(0)
      limpatela

      escreval("                              *0 ")
      escreval("                             *  *")
      escreval("                              ** ")
      escreval()
      escreval()
      escreval("              Aguarde enquanto carregamos o sistema")
      limpatela


     // --------- Exibir resumo das faturas no mês de Setembro ---------------- //

     // Cria-se um laço de repetição que irá exibir o consumo de cada um dos 10
     // usuários no mês de Setembro.

     para posicaoUsuario de 1 ate 10 faca
     
       // Iniciam-se variáveis locais que serão resetadas a cada looping do laço
       // para.
     
       consumoMesSetembro <- 0
       consumoKiloWattsSetembro <- 0
       consumoKiloWattsHoraSetembro <- 0

       // Soma do consumo do usuário ao longo dos 10 dias do mês.

       para diasConsumo de 1 ate 10 faca
         consumoMesSetembro <- matrizConsumoDiarioEquipamentosSetembro[posicaoUsuario, diasConsumo] + consumoMesSetembro
       fimpara

       // Exibe-se o resumo da fatura de cada usuário, especificando quanto cada
       // um gastou em watts, kilo watts, kilo watts hora e o total a ser pago.
       // Além de verificar se o consumo foi: maior, igual ou menor ao mês anterior

       escreval("===============================================================")
       escreval("O consumo do usuário ",vetorUsuarios[posicaoUsuario]," no mês de")
       escreval("setembro foi de: ", consumoMesSetembro,"watts")

       consumoKiloWattsSetembro <- consumoMesSetembro / 1000
       consumoKiloWattsHoraSetembro <- consumoKiloWattsSetembro / 3

       escreval("---------------------------------------------------------------")
       escreval("Um total de", consumoKiloWattsSetembro,"kW foi consumido no mês")
       escreval("sendo que foram", consumoKiloWattsHoraSetembro,"kWh")

       // Aplicando o valor do consumo do segundo mês na matriz para cada usuário
       // para poder comparar os valores de consumo.

       matrizConsumoTotalMeses[posicaoUsuario, 2] <- consumoKiloWattsSetembro


       diferenca <-  matrizConsumoTotalMeses[posicaoUsuario, 2] - matrizConsumoTotalMeses[posicaoUsuario, 1]

       // Condicional para exibir as informaçao correta de acordo com a diferença
       // entre os consumos de energia dos dois meses.

       se (diferenca > 0) entao
        escreval("Não houve economia, e sim um aumento de", diferenca,"kW no mês")
       senao
         se (diferenca = 0) entao
           escreval("As faturas entre os meses tiveram a mesma quantidade de consumo")
         senao
           escreval("Houve economia de", diferenca,"kW no mês")
         fimse
       fimse

       // Operação para verificar o total a pagar pela energia elétrica

       totalAPagar <- consumoKiloWattsSetembro * valorKiloWattHora

       escreval("Total a pagar de R$", totalAPagar:2:2)
       escreval("===============================================================")
       escreval("")

     fimpara
   
   fimse

   
Fimalgoritmo