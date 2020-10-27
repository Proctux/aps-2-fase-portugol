Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Robson Cavalcante
// Descrição   : Atividade Prática Supervisionada
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 12/10/2020
Var
// Seção de Declarações das variáveis

// Variáveis de apresentação do menu -- //

   opcaoAlgoritimo, temporizador, verificador, verificacaoDeResposta: inteiro
   
   resposta, confirmar: caracter
   
   salarioBrutoAnual, rendimentosBrutoAnual, baseCalculoTotal, despesas: real
   aliquota, totalIRPF, rendimentosTotais, baseValorTotal: real
   rendimentoLiquido: real

// --- Variáveis do primeiro algorítimo [IMPOSTO DE RENDA] --- //


   
// --- Variáveis do segundo algorítimo [CONTROLE ACADÊMICO] --- //

   media, mediaPonderada: real
   
// --- Variáveis do terceiro algorítimo [ELEIÇÃO PARA PRESIDENTE] --- //



// --- Variáveis do quarto algorítimo [CÁLCULO DO CONSUMO DE ENERGIA] --- //

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

   para temporizador de 1 ate 0 passo -1 faca
     escreval("NOTAS IMPORTANTES!!!")
     escreval(" - Para cada valor digitado errôneamente pelo usuário, haverá uma")
     escreval("   validação.")
     escreval(" - Caso seja solicitado um número INTEIRO para escolha de opções")
     escreval("   e o usuário digite um número com ponto, o valor digitado")
     escreval("   será arredondado para baixo.")
     escreval(" - Se mesmo arredondado, o valor não estiver presente nas opções")
     escreval("   será solicitado um novo valor ao usuário")
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
   

   leia(opcaoAlgoritimo)
   
   enquanto (opcaoAlgoritimo <= 0) ou (opcaoAlgoritimo > 4) faca
     escreval("Por favor, digite um número válido entre 1 e 4")
     leia(opcaoAlgoritimo)
   fimenquanto
   
   
   timer(2000)
   limpatela
   timer(0)
   
   
   // De acordo com a escolha do usuário, o algorítimo X da APS será executado.
   
   se (opcaoAlgoritimo = 1) entao
   
      escreval("Para o calculo do imposto de renda pessoa física, responda abaixo: ")
      escreval("Você é trabalhador assalariado? (S/N) ")
      leia (resposta)
      resposta <- maiusc(resposta)
      
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
      
      confirmar <- "N"
      
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
      
      confirmar <- "N"
      
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
   fimse
   se (opcaoAlgoritimo = 3) entao
   fimse
   se (opcaoAlgoritimo = 4) entao
   fimse

   
Fimalgoritmo