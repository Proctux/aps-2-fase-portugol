Algoritmo "MEDIA ALUNOS PONDERADA"
// Disciplina   : [Lógica de Programação e Algoritimos]
// Professor   : Robson Cavalcante
// Descrição   : Calcula a média ponderada dos alunos
// Autor(a)    : Luiz Fernando de Morais
// Data atual  : 25/10/2020
Var
// Seção de Declarações das variáveis 


  nomeInstituicao, disciplina, confirmar, limparTelaParaGerais: caracter
  
  diasLetivos, contador, carregador, numeroProvas, numeroTrabalhos: inteiro
  alunosReprovados, alunosAprovados, quantidadeAlunos, faltasAluno: inteiro
  aluno, numeroProvasTrabalhos, escolhaControleModulo, notas: inteiro
  
  percentualReprovados, percentualAprovados, mediaTurma, mediaFinal: real
  somaGeralMediaNotas, frequencia, mediaProvas, mediaTrabalhos: real
  somaNotaAlunoProvas, somaNotaAlunoTrabalhos: real
  nota: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

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
   
   enquanto (confirmar <> "S") faca
     escreva("Nome da instituição: ")
     leia(nomeInstituicao)
     escreval("")
     escreval("O nome da instituição apresentado ao longo do software será: ")
     escreval(nomeInstituicao, ". Deseja confirmar e prosseguir? (S/N)")
     leia(confirmar)
     confirmar <- maiusc(confirmar)
   fimenquanto
   
   escreval("")
   
   confirmar <- "N"
   enquanto (confirmar <> "S") faca
     escreva("Quantidade de dias letivos: ")
     leia(diasLetivos)
     escreval("")
     escreval("A quantidade de dias letivos para verficação de frequência será")
     escreval("de: ", diasLetivos, " dias. Deseja confirmar? (S/N)")
     leia(confirmar)
     confirmar <- maiusc(confirmar)
   fimenquanto
   
   escreval("")
   
   confirmar <- "N"
   enquanto (confirmar <> "S") faca
     escreva("Disciplina para controle acadêmico: ")
     leia(disciplina)
     escreval("")
     escreval("O nome da disciplina apresentado ao longo do software será: ")
     escreval(disciplina, ". Deseja confirmar e prosseguir? (S/N)")
     leia(confirmar)
     confirmar <- maiusc(confirmar)
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
   
   
   somaGeralMediaNotas <- 0
   alunosAprovados <- 0
   alunosReprovados <- 0
   escreval("Bem-vindo ao controle acadêmico da ", nomeInstituicao)
   escreval("")
   escreval("Para a disciplina ", disciplina," contamos com duas opções de ")
   escreval("controle: ")
   escreval("1 - Média simples + Frequência")
   escreval("2 - Média ponderada + Frequência")
   escreval("")
   
   escreval("Por favor, escolha uma das opções acima pelo seu número")
   leia(escolhaControleModulo)
   
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
   
   
   se (escolhaControleModulo = 1) entao
    escreval("Por favor, digite o número de provas e trabalhos aplicados, não")
    escreva("superior a 15: ")
    leia(numeroProvasTrabalhos)
    
    enquanto (numeroProvasTrabalhos < 1) ou (numeroProvasTrabalhos > 15) faca
      escreva("Por favor, digite um número entre 0 e 15.")
      leia(numeroProvasTrabalhos)
    fimenquanto
    
    escreval("")
    
    escreva("Agora, digite o numero de alunos da disciplina, não maior que 40")
    leia(quantidadeAlunos)
    
    enquanto (quantidadeAlunos < 1) ou (quantidadeAlunos > 40) faca
      escreva("Por favor, digite um número entre 0 e 40.")
      leia(quantidadeAlunos)
    fimenquanto
    
    para aluno de 1 ate quantidadeAlunos faca
      somaNotaAluno <- 0
      escreval("")
      escreval("Escreva as notas do ", aluno,"° aluno")
      
      para notas de 1 ate numeroProvasTrabalhos faca
        escreva(notas,"° prova / trabalho: ")
        leia(nota)
        
        enquanto (nota < 0) ou (nota > 10) faca
          escreval("Por favor, digite um valor entre 0 e 10 para as notas.")
          leia(nota)
        fimenquanto
        
        somaNotaAluno <- somaNotaAluno + nota
      fimpara
      
      escreval("")
      escreval("Digite a quantidade de faltas deste aluno.")
      leia(faltasAluno)
      
      enquanto (faltasAluno < 0) ou (faltasAluno > diasLetivos) faca
        escreval("Por favor, digite um número de faltas entre 0 e", diasLetivos)
        leia(faltasAluno)
      fimenquanto
      
      frequencia <- (diasLetivos - faltasAluno) / diasLetivos * 100

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
      
      mediaTurma <- somaGeralMediaNotas / quantidadeAlunos
      percentualAprovados <- alunosAprovados / quantidadeAlunos * 100
      percentualReprovados <- alunosReprovados / quantidadeAlunos * 100
      
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
   
    mediaProvas <- 0
    mediaFinal <- 0

    escreval("Por favor, digite o número de provas e trabalhos aplicados, não")
    escreval("superior a 15.")
    escreva("Provas: ")
    leia(numeroProvas)
    escreva("Trabalhos: ")
    leia(numeroTrabalhos)

    enquanto (numeroProvas + numeroTrabalhos < 1) ou (numeroProvas + numeroTrabalhos > 15) faca
      escreval("Por favor, digite um números que somados deem entre 0 e 15.")
      escreva("Provas: ")
      leia(numeroProvas)
      escreva("Trabalhos: ")
      leia(numeroTrabalhos)
    fimenquanto
    
    escreval("")

    escreval("Agora, digite o numero de alunos da disciplina, não maior que 40")
    leia(quantidadeAlunos)

    enquanto (quantidadeAlunos < 1) ou (quantidadeAlunos > 40) faca
      escreval("Por favor, digite um número entre 0 e 40.")
      leia(quantidadeAlunos)
    fimenquanto

    para aluno de 1 ate quantidadeAlunos faca
      somaNotaAlunoProvas <- 0
      somaNotaAlunoTrabalhos <- 0
      escreval("")
      escreval("Escreva as notas de PROVAS do ", aluno,"° aluno")

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

      para notas de 1 ate numeroTrabalhos faca
        escreva("Nota", notas,": ")
        leia(nota)
        
        enquanto (nota < 0) ou (nota > 10) faca
          escreval("Por favor, digite um valor entre 0 e 10 para as notas.")
          leia(nota)
        fimenquanto
        
        somaNotaAlunoTrabalhos <- somaNotaAlunoTrabalhos + nota
      fimpara
      
      escreval("")
      escreval("Digite a quantidade de faltas deste aluno.")
      leia(faltasAluno)
      
      enquanto (faltasAluno < 0) ou (faltasAluno > diasLetivos) faca
        escreval("Por favor, digite um número de faltas entre 0 e", diasLetivos)
        leia(faltasAluno)
      fimenquanto
      
      frequencia <- (diasLetivos - faltasAluno) / diasLetivos * 100

      mediaProvas <- somaNotaAlunoProvas / numeroProvas
      mediaTrabalhos <- somaNotaAlunoTrabalhos / numeroTrabalhos

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
    
    mediaTurma <- somaGeralMediaNotas / quantidadeAlunos
    percentualAprovados <- alunosAprovados / quantidadeAlunos * 100
    percentualReprovados <- alunosReprovados / quantidadeAlunos * 100
    
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
    escreval("O percentual de alunos aprovados foi: ", percentualAprovados:2:2, "%")
    escreval("O percentual de alunos reprovados foi: ", percentualReprovados:2:2, "%")
   
   
   fimse



Fimalgoritmo