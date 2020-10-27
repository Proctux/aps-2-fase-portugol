Algoritmo "CALCULO ENERGIA ELETRICA"
// Disciplina   : [Lógica de Programação e Algoritimos]
// Professor   : Robson Cavalcante
// Descrição   : Calcula o consumo de energia para 10 usuarios em dois meses
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 26/10/2020
Var
// Seção de Declarações das variáveis

  diasAgosto, posicaoUsuario, codigoEquipamento: inteiro
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
  
  para posicaoUsuario de 1 ate 10 faca
    para diasAgosto de 1 ate 10 faca
       escreval("Digite o código do equipamento utilizado pelo usuário ", vetorUsuarios[posicaoUsuario])
       escreval("no", diasAgosto,"° dia de Agosto.")
       leia(codigoEquipamento)
      
       escreval("")
       enquanto (codigoEquipamento < 1) ou (codigoEquipamento > 10) faca
         escreval("Por favor, digite um código entre 1 e 10")
         leia(codigoEquipamento)
         escreval("")
       fimenquanto
      
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

  para posicaoUsuario de 1 ate 10 faca
    consumoMesAgosto <- 0
    consumoKiloWattsAgosto <- 0
    consumoKiloWattsHoraAgosto <- 0

    para diasConsumo de 1 ate 10 faca
      consumoMesAgosto <- matrizConsumoDiarioEquipamentos[posicaoUsuario, diasConsumo] + consumoMesAgosto
    fimpara
    
    escreval("===============================================================")
    escreval("O consumo do usuário ",vetorUsuarios[posicaoUsuario]," no mês de")
    escreval("agosto foi de: ", consumoMesAgosto,"watts")

    consumoKiloWattsAgosto <- consumoMesAgosto / 1000
    consumoKiloWattsHoraAgosto <- consumoKiloWattsAgosto / 3

    escreval("---------------------------------------------------------------")
    escreval("Um total de", consumoKiloWattsAgosto,"kW foi consumido no mês")
    escreval("sendo que foram", consumoKiloWattsHoraAgosto,"kWh")
    
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
       escreval("Digite o código do equipamento utilizado pelo usuário ", vetorUsuarios[posicaoUsuario])
       escreval("no", diasSetembro,"° dia de Setembro.")
       leia(codigoEquipamento)

       escreval("")
       enquanto (codigoEquipamento < 1) ou (codigoEquipamento > 10) faca
         escreval("Por favor, digite um código entre 1 e 10")
         leia(codigoEquipamento)
         escreval("")
       fimenquanto

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

  para posicaoUsuario de 1 ate 10 faca
    consumoMesSetembro <- 0
    consumoKiloWattsSetembro <- 0
    consumoKiloWattsHoraSetembro <- 0

    para diasConsumo de 1 ate 10 faca
      consumoMesSetembro <- matrizConsumoDiarioEquipamentosSetembro[posicaoUsuario, diasConsumo] + consumoMesSetembro
    fimpara
    
    escreval("===============================================================")
    escreval("O consumo do usuário ",vetorUsuarios[posicaoUsuario]," no mês de")
    escreval("setembro foi de: ", consumoMesSetembro,"watts")
   
    consumoKiloWattsSetembro <- consumoMesSetembro / 1000
    consumoKiloWattsHoraSetembro <- consumoKiloWattsSetembro / 3
   
    escreval("---------------------------------------------------------------")
    escreval("Um total de", consumoKiloWattsSetembro,"kW foi consumido no mês")
    escreval("sendo que foram", consumoKiloWattsHoraSetembro,"kWh")
    
    matrizConsumoTotalMeses[posicaoUsuario, 2] <- consumoKiloWattsSetembro
    

    diferenca <-  matrizConsumoTotalMeses[posicaoUsuario, 2] - matrizConsumoTotalMeses[posicaoUsuario, 1]
    
    se (diferenca > 0) entao
     escreval("Não houve economia, e sim um aumento de", diferenca,"kW no mês")
    senao
      se (diferenca = 0) entao
        escreval("As faturas entre os meses tiveram a mesma quantidade de consumo")
      senao
        escreval("Houve economia de", diferenca,"kW no mês")
      fimse
    fimse
    
    totalAPagar <- consumoKiloWattsSetembro * valorKiloWattHora
    
    escreval("Total a pagar de R$", totalAPagar:2:2)
    escreval("===============================================================")
    escreval("")
    
  fimpara
 
 
 

Fimalgoritmo