Algoritmo "IMPOSTO DE RENDA PESSOA FISICA"
// Disciplina   : [L�gica de Programa��o e Algoritimos]
// Professor   : Robson Cavalcante
// Descri��o   : Calculo do imposto de renda pessoa f�sica
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 27/10/2020
Var
// Se��o de Declara��es das vari�veis

   verificador, verificacaoDeResposta: inteiro

   resposta, confirmar: caracter

   salarioBrutoAnual, rendimentosBrutoAnual, baseCalculoTotal, despesas: real
   aliquota, totalIRPF, rendimentosTotais, baseValorTotal: real
   rendimentoLiquido: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

      escreval("Para o calculo do imposto de renda pessoa f�sica, responda abaixo: ")
      escreval("Voc� � trabalhador assalariado? (S/N) ")
      leia (resposta)
      resposta <- maiusc(resposta)

      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse

      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra v�lida. 'S' para sim ou 'N' para n�o.")
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
           escreval("Por favor, digite o rendimento BRUTO ANUAL de sal�rios")
           leia(salarioBrutoAnual)

           escreval("Voc� ganhou R$", salarioBrutoAnual," em um ano de sal�rio?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
        fimenquanto
      fimse

      escreval("O valor de R$", salarioBrutoAnual," foi adicionado a mem�ria.")

      timer(2000)
      limpatela
      timer(0)

      //Se��o que pergunta sobre a adi��o de outros rendimentos

      escreval("H� subitens de declara��o al�m dos sal�rios? ex:")
      escreval("Alugu�is, vendas de im�veis, investimentos...")
      escreval("Digite 'S' para confirmar ou 'N' para seguir adiante")
      leia(resposta)
      resposta <- maiusc(resposta)

      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse

      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra v�lida. 'S' para sim ou 'N' para n�o.")
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
           escreval("Para seu aux�lio, abaixo a lista de itens tribut�veis")
           escreval("Segundo a Receita, s�o obrigados a declarar o Imposto de")
           escreval("Renda os contribuintes que:")

           // Lista de itens tribut�veis, pessoa f�sica

           escreval(" - Receberam rendimentos isentos, n�o tribut�veis ou ")
           escreval("   tributados exclusivamente na fonte (por exemplo: ")
           escreval("   indeniza��es trabalhistas, caderneta de poupan�a ou")
           escreval("   doa��es) em valor superior a R$ 40 mil.")

           escreval(" - Obtiveram, em qualquer m�s, ganhos na venda de bens ou")
           escreval("   direitos sujeitos � incid�ncia de Imposto de Renda, como")
           escreval("   im�veis vendidos com lucro.")

           escreval(" - Realizaram opera��es em bolsas de valores, de")
           escreval("   mercadorias, de futuros e assemelhadas (investimentos).")

           escreval(" - Tiveram, no ano anterior, receita bruta em valor")
           escreval("   superior a R$ 142.798,50 em atividade rural.")

           escreval(" - Tinham, em 31 de dezembro do ano anterior, a posse ou a")
           escreval("   propriedade de bens ou direitos, inclusive terra nua")
           escreval("   de valor total superior a R$ 300 mil.")

           escreval(" - Passaram � condi��o de residentes no Brasil em qualquer")
           escreval("   m�s e, nessa condi��o, encontravam-se em 31 de dezembro")
           escreval("   do ano anterior.")

           escreval("Por favor, digite a soma bruta desses rendimentos acima: ")
           leia(rendimentosBrutoAnual)

           escreval("Voc� ganhou R$", rendimentosBrutoAnual," em um ano?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
        fimenquanto

        escreval("O valor de R$", rendimentosBrutoAnual," foi adicionado a mem�ria.")
      fimse

      timer(2000)
      limpatela
      timer(0)


      //Se��o que pergunta sobre despesas

      escreval("H� a possibilidade de declarar despesas para redu��o do valor")
      escreval("a ser pago. Ex: Gasto com dependentes, sa�de, educa��o...")
      escreval("Digite 'S' para confirmar ou 'N' para seguir adiante")
      leia(resposta)
      resposta <- maiusc(resposta)

      se (resposta = "S") ou (resposta = "N") entao
        verificacaoDeResposta <- 1
      senao
        verificacaoDeResposta <- 0
      fimse

      enquanto verificacaoDeResposta <> 1 faca
        escreval("Por favor, digite uma letra v�lida. 'S' para sim ou 'N' para n�o.")
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
           escreval("Abaixo, uma lista com explica��es b�sicas do que pode ser")
           escreval("considerado despesas a serem reduzidas do IRPF")

           // Lista de itens considerados despesas de dedu��o

           escreval(" - Pens�o aliment�cia, sendo valor valor integral, caso haja")
           escreval("   comprova��o judicial.")

           escreval(" - Previd�ncia, sendo valor integral, caso previd�ncia da")
           escreval("   Uni�o, e at� 12% caso previd�ncia privada.")

           escreval(" - Gasto com dependentes, sendo c�njuge; filhos ou enteados at� 24 anos")
           escreval("   caso estejam em regularmente matr�culados ou at� os 21 anos")
           escreval("   caso n�o, at� um valor m�ximo de R$2.275.08 por dependente")

           escreval(" - Educa��o, at� 24 anos, at� um m�ximo de R$3.561,50 por")
           escreval("   por dependente.")

           escreval(" - Sa�de, sendo valor integral. V�lido para consultas m�dicas")
           escreval("   dentistas, psic�logos, fisioterapeutas, terapeutas ocupacionais")
           escreval("   fonoaudi�logos, hospitais, al�m de exames laboratoriais")
           escreval("   servi�os radiol�gicos, aparelhos ortop�dicos e pr�teses")
           escreval("   ortop�dicas e dent�rias.")

           escreval("Por favor, digite a soma bruta dessas despesas acima: ")
           leia(despesas)

           escreval("Voc� gastou R$", despesas," em um ano?")
           escreval("Digite 'S' para confirmar ou 'N' para ajustar")
           leia(confirmar)
           confirmar <- maiusc(confirmar)
         fimenquanto

         escreval("O valor de R$", despesas," foi adicionado a mem�ria.")
      fimse

      timer(2000)
      limpatela
      timer(0)


         // ------ Tela de carregamento da sess�o ------ //

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

      escreval("Abaixo, h� a representa��o da tabela de imposto de renda.")
      escreval("")
      escreval("Nela � poss�vel ver a base de c�lculo, aliquota e parcela a.")
      escreval("reduzir do imposto de renda (valor fixo).")
      escreval("")

      escreval("===================================================================")
      escreval("| BASE DE C�LCULO (R$) | AL�QUOTA (%) | PARCELA A DEDUZIR DO IRPF |")
      escreval("|����������������������|��������������|���������������������������|")
      escreval("|     At� 1.903,98     |    isento    |           isento          |")
      escreval("|De 1.903,99 � 2.826,65|      7,5%    |          R$ 142,80        |")
      escreval("|De 2.826,66 � 3.751,05|     15,0%    |          R$ 354,80        |")
      escreval("|De 3.751,06 � 4.664,68|     22,5%    |          R$ 636,13        |")
      escreval("|  Acima de 4.664,68   |     27,5%    |          R$ 869,36        |")
      escreval(" ����������������������������������������������������������������� ")

      rendimentosTotais <- salarioBrutoAnual + rendimentosBrutoAnual
      baseValorTotal <- (salarioBrutoAnual + rendimentosBrutoAnual - despesas)
      baseCalculoTotal <- baseValorTotal / 12

      // Uso de uma estrutura encadeada para definir o valor de al�quota //

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
        escreval("Seu rendimento anual, sal�rio + rendimentos tribut�veis,")
        escreval("foi: R$", rendimentosTotais)
        escreval("")
        escreval("J� suas despesas foram de: R$", despesas)
        escreval("")
        escreval("Deste modo, a base de valor total �: R$", baseValorTotal)
        escreval("este valor dividido pelos meses do ano � de: R$", baseCalculoTotal:2:2)
        escreval("")
        escreval("Com base na tabela acima, seus rendimentos - suas despesas")
        escreval("divididos pelos meses do ano, se enquadram em", aliquota,"%.")
      fimse

      escreval("")
      escreval("Logo, o valor total a pagar, deduzindo a parcela �nica do IRPF.")
      escreval("Ser� de R$", totalIRPF:2:2,".")

      rendimentoLiquido <- baseValorTotal - totalIRPF

      escreval("")
      escreval("Seu rendimento liquido foi de: R$", rendimentoLiquido:2:2,".")



Fimalgoritmo