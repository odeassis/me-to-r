<h2 align="center">
  Linguagem R :game_die:
</h2>

<p align="center">"A ciência mostra a realidade independente do que a gente acha ou gostaria, porque com ela a gente pode falar 'faça-se luz' e tornar o invisível visível, acreditando nele ou não."</blockquote>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/fdAssis/Linguagem-R?logo=r&logoColor=blue">

  <img alt="GitHub" src="https://img.shields.io/github/license/fdAssis/Linguagem-R?color=blue">

  <img alt="GitHub stars" src="https://img.shields.io/github/stars/fdAssis/Linguagem-R?logoColor=blue&style=social">
</p>

<p align="center">
  <a href="#octocat-sobre-o-repositorio">Sobre esse repositorio </a> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#milky_way-índice">Índice </a> &nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="#memo-licença">Licença</a>&nbsp;&nbsp; 
</p>

## :octocat: Sobre o repositorio
  Repositório destinado ao aprendizado da linguagem R e suas aplicações na área de ciências de dados.

## :milky_way: Índice
- ## 1. Fundamentos do R parte 1
   - <a href="#linguagem-r">Linguagem R</a>
   - <a href="#operadores-basico-relacionais-e-logicos">Operadores Basico, relacionais e logicos</a>
   - <a href="#tipos-de-dados">Tipos de Dados</a>
   - <a href="#variáveis">Variáveis</a>
   - <a href="#objetos">Objetos</a>
   - <a href="#vetores">Vetores</a>
   - <a href="#matrizes">Matrizes</a>
   - <a href="#listas">Listas</a>
   - <a href="#strings">Strings</a>
   - <a href="#dataframes">Dataframes</a>
   - <a href="#estrutura-de-controle">Estrutura de Controle</a>
   - <a href="#exercicios">Exercicios</a>
---
- ### Linguagem R
  - O principal objetivo da linguagem R é realizar a computação de dados, é uma linguagem de programação estatística.
  - A linguagem R é baseada em objetos, os objetos podem ser vetores, matrizes, funções, aquivos, conjuntos de dados, etc ...
  - Com a linguagem R se manipula objetos. A manipulação pode ser.cálculo, entrada e saída de dados, análises estatísticas, graficos, etc ...
  - R é um 'projeto' open-source (gratuito)
  - R possui uma grande variedade de pacotes e bibliotecas (https://cran.r-project.org).
  - A linguagem R é totalmente imperativa (*o programador diz como e o quê exatamente um programa ou rotina deve realizar*).
  - O R é case-sensitive, isto é, ele diferencia letras maiúsculas de minúsculas. (*portanto **A** é diferente de **a***).
  - O separador de casas decimais é o ponto '**.**' ( **Ex:** 42.8, 5.2, ... ). 
  - A vírgula é usada para separar argumentos (informações)
    - ```R 
      vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE)
      vetor_caracter = c('Ola', "Mundo", "!")
      ```
  - Ao instalar o R apenas as configurações minimas para o seu funciomaneto basico são instalados, são os pacotes(packages) que já vem na instalação padrão do R. Para realizar tarefaz mais complexas pode ser necessario instalar pacotes adicionais. O R se conecta automaticamente a internet dessa forma é possivel instalar e atualizar pacotes.
    - Para instalar pacotes por linha de comando utiliza-se o comando *install.packages("nome-do-pacote")* e para carregar o pacote usa-se o comandodo *libray(nome-do-pacote)*.
  - Para se obter ajuda sobre determinada função o R disponibiliza 4 formas, são elas: **help.search, ??name, RSiteSearch, example**
    - help.search('nome-da-funcao')
    - ??nome-da-funcao
    - RSiteSearch('nome-da-funcao')
    - example('nome-da-funcao')
    ```R
    # Ver detalhes das funcoes
    ## Se souber o nome da funcao
    help(mean)
    ?mean

    ## Se nao souber o nome da funcao
    help.search('randomForest')
    help.search('matplot')
    ??matplot
    RSiteSearch('matplot')
    example('matplot')
    ```
  - Algumas funções em R, possuem demostrações de uso e para isso utiliza-se a função **demo()**.
  - Para imprimir um comando na tela utilize a função **print()**.
  - Um principio basico de programação é evitar a repetição de código, quando tivermos um trecho de código que poderar ser repetido diversas vezes em um arquivo separado podemos facilmente inclui no nosso script do R sem ter que copiar e colar. Quando queremos executar comandos existentes dentro de um script usamos a função **source()**. 

- #### Operadores Basico, relacionais e logicos
- #### Tipos de Dados
- #### Variáveis
- #### Objetos
- #### Vetores
- #### Matrizes
- #### Listas
- #### Srtings
- #### Dataframes
- #### Estrutura de Controle
- #### Exercicios



## :memo: Licença

Esse projeto está sob a licença MIT.

---
