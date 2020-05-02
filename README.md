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
   - <a href="#exercicios">Exercicios</a>
---
- ### Linguagem R
  - O principal objetivo da linguagem R é realizar a computação de dados, é uma linguagem de programação estatística.
  - A linguagem R é baseada em objetos, os objetos podem ser vetores, matrizes, funções, aquivos, conjuntos de dados, etc.
  - Com a linguagem R se manipula objetos. A manipulação pode ser cálculo, entrada e saída de dados, análises estatísticas, graficos, etc.
  - R é um 'projeto' open-source (gratuito).
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

- ### Operadores Basico, relacionais e logicos
>Script com exemplos na pasta **Parte-1/02-Operadores.R** .
  - Operadores Matemáticos
    - | Operador | Operação |
      |----------|----------|
      | + | Soma|
      | - | Subtração|
      | * | Multiplicação |
      | / | Divisão |
      | ^ ou ** | Potência |
      | %%| Módulo (resto da divisão) |

      ```R
      # Soma
      10 + 20
      # Subtração
      20 - 10
      # Multiplicação
      10 * 20
      # Divisão
      20 / 10
      # Potência
      10 ^ 3
      10 ** 3
      # Módulo
      10 %% 3      
      # Use parênteses para separar partes dos cálculos.
      (10 + 4)*(10 - 5)
      ```

  - Operadores Relacionais
    - | Operador | Operação |
      |----------|----------|
      | > | Maior|
      | < | Menor|
      | >= | Maior ou igual |
      | <= | Menor ou igual |
      | == | Igual (comparação) |
      | != | Diferente |

      *Os operadores relacionais retornam valores booleanos TRUE (verdadeiro) ou FALSE (falso).*

      ```R
      # Maior
      5 > 3
      # Menor
      3 < 4
      # Menor ou Igual
      5 <=10
      # Maior ou Igual 
      8 >=7
      # Igual
      5 == 5
      # Diferente
      3 != 4
      ```
  - Operadores Lógicos
    - | Operador | Operação |
      |----------|----------|
      | & | and|
      | \| | or|
      | ! | not |
      | TRUE (ou 1) | Valor booleano verdadeiro (1) |
      | FALSE (ou 0) | Valor boolenao falso (0) |
      
      *Caso tenha alguma duvida sobre o funciomanento dos operadores lógicos, veja abaixo como é o funciomamento (lógica) de cada operador através da tabela verdade.*

      - Tabela Verdade
        - Conectivo & (and)
          - | P |  Q | P & Q |
            | --| -- | ----- |
            | TRUE  | TRUE  | TRUE |
            | TRUE  | FALSE | FALSE|
            | FALSE | TRUE  | FALSE|
            | FALSE | FALSE | FALSE|
            
            *A conjução **P & Q** é verdadeira (TRUE) se P e Q são ambos verdadeiro; se ao menos uma delas for falsa (FALSE) então **P & Q** é falsa.*
        
        - Conectivo | (or)
          - | P |  Q | P \| Q |
            | --| -- | ----- |
            | TRUE  | TRUE  | TRUE |
            | TRUE  | FALSE | TRUE |
            | FALSE | TRUE  | TRUE |
            | FALSE | FALSE | FALSE|
            
            *A disjunção **P \| Q** é verdadeira (TRUE) se ao menos uma das proposições P ou Q é veradeira; se P e Q são ambas falsas (FALSE), então P \| é falsa.*

        - Negação ! (not)
          - | P | !P |
            |-- |-- |
            | TRUE| FALSE|
            | FALSE | TRUE |
            
            *A preposição **!P** tem sempre o valor oposto de P, isto é !P é verdadeira (TRUE) quando P é falsa (FALSE) e !P é falsa quando P é verdadeira.*
  
      ```R
      # & (and)
      (10==10) & (4 !=6)
      # | (or)
      (3==8) | (7 > 4)
      # ! (not)
      !FALSE
      ```
            
- ### Tipos de Dados
>Script com exemplos na pasta **Parte-1/03-Tipos_de_Dados.R** 
  - Basicamente temos quatro tipos de Dados no R: 
    - **Numérico** (1, 5.0, -1)
    - **Caractere** ("A", 'Bola')
    - **Complexo** (z = x + yi)
    - **Lógico** (True, False)

  - Valores especiais
    - **NA** - Not Available
    - **NaN** - Not a Number
    - **Inf** e -**Inf** (+/- infinito)

- ### Variáveis
>Script com exemplos na pasta **Parte-1/04-Variaveis.R**
  - Na programação uma variável é um objeto uma posição na memoria do computador capaz de reter e representar um valor  ou expressão. Enquanto as variávei só existem em tempo de execução elas são associadas a nomes chamados indentificadores durante o tempo de desenvolvimento. Quando nos referimos as variáveis do ponto de vista de programação de computadores estamos tratando de uma região de memoria previamente identificada cuja  a finalidade é armazenar dados ou informações de um programa pelo determinado espaço de tempo. 

  - Palavras Reservadas 
    - Nomes que não podem ser usados como nomes de variáveis:
    
    - |           |          |       |
      |  --       |   --     |  --   |
      |  FALSE    |   Inf    |  NA   |
      |  NaN      |   NULL   |  TRUE |
      |  break    |   else   |  for  |
      |  function |   if     |  in   |
      |  next     |   repeat |  while|
    
- ### Objetos
>Script com exemplos na pasta **Parte-1/05-Objetos.R**
  - O R é uma linguagem orientada a objetos, variáveis, dados, funções, etc..., são armazenados na memoria ativa do computador na forma de objetos. Em R tudo é objeto. 

  - Principais objetos do R:
    
    - **Vetores** - São uma sequencia de valores numéricos ou de caracteres.
    - **Matrizes** - Coleção de vetores em linhas e colunas, sendo que todos os vetores tem quer ser do mesmo tipo de dado.
    - **Listas** - São conjuntos de vetores, dataframes ou de matrizes que não precisam ter o mesmo comprimento, a maioria de funções em R retorna como valor uma lista.
    - **Dataframes** - São iguais as matrizes porem aceitam tipos de dados diferentes. 
    - **Funções** - As funções são criadas para realizar os mais diversos calculos e operações com outros objetos em R.

- ### Vetores
  - Conjunto de elementos de uma mesma natureza. No R um vetor é qualquer conjunto unidimensinal de valores, esses valores podem ser *números*, *strings* ou *valores lógicos*.
  Para criar vetores utiliza-se as funções **c()**, **seq()**, **rep()**.

  ```R
    # Vetor de caracteres
    vetor_caracter = c('Ola', "Fran")
  
    # Vetor de floats
    vetor_numerico = c(1.89, 8.35, 10.5)

    # Vetor de valores complexos
    vetor_complexo = c(5.2+3i, 3.8+7i)

    # Vetor de valores logicos
    vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE)

    # Utilizando seq()
    vetor1 = seq(1:10)

    # Utilizando req()
    vetor2 = req(1:5)
    ...
  ```
- ### Matrizes
  - Conjuntos de elementos de uma mesma natureza, organizados em linhas e colunas. Uma matriz é atribuida ao um objeto atravez da função **matrix()**, essa função tem como argumento o conjunto de dados, o número de linhas e o número de coluna dessa matriz. O conjunto de dados deve ser escrito na ordem das colunas, ou seja como se as colunas tivessem enfileiradas umas sobre as outras. 

  - O **Array** generaliza o conceito de **Matriz**. Enquanto na matriz os elementos são organizados em 2 dimensões (linhas e colunas), em um array os elementos podem ser organizados em um número arbitrário de dimensões. 

  ```R
  # Criando Matrizes

  # Numero de Linhas
  matrix (c(1,2,3,4,5,6), nr = 2)
  matrix (c(1,2,3,4,5,6), nr = 3)
  matrix (c(1,2,3,4,5,6), nr = 6)

  # Numero de Colunas
  matrix ( c ( 1,2,3,4,5,6), nc = 2) 

  # Matrizes precisam ter um numero de elementos que seja multiplo do numero de linhas
  matrix ( c (1,2,3,4,5), nc = 2)
  ...
  ```
- ### Listas
  -  Generalizações de vetores, representam uma coleção de objetos, uma lista é uma coleção de objetos de natureza e tamanhos diferentes. Cria-se uma lista atravez da função **list()**. 

  ```R
  # Use list() para criar listas

  # Lista de strings
  lista_caracter = list('A', 'Bem-vindo', 'DSA')

  # Lista de números inteiros
  lista_inteiros = list(2, 3, 4)

  # Lista de floats
  lista_numerico = list(1.90, 45.3, 300.5)

  # Lista de números complexos
  lista_complexos = list(5.2+3i, 2.4+8i)

  # Lista de valores lógicos
  lista_logicos = list(TRUE, FALSE, FALSE)

  # Listas Compostas
  lista_composta1 = list("A", 3, TRUE)
  ...
  ```
- ### Srtings
  - Strings são conjuntos de caracteres, são objetos eme R que armazenam textos ou somente um caractere. 

  ```R
  # String
  texto <- "Isso é uma string!"

  # Concatenando Strings
  nome = "Barack"; sobrenome = "Obama" 
  paste(nome, sobrenome)
  cat(nome, sobrenome)

  # Formatando a saída
  sprintf("%s governa os EUA há %d anos", "Barack Obama", 8) 
  ...
  ```
- ### Dataframes
  - Similar a matrizes, porém cada coluna pode possuir elementos de natureza diferentes, essa estrutura de dados é similar a uma tabela. Podem fazer parte do mesmo dataframes números e strings. Para criar um dataframe utiliza-se a opção **data.frame().** Pode-se também utilizar funções que permite ler arquivos e carregar os dados dentro do dataframe, como por exemplo: 
    - **read.xls()** - Excel
    - **read.mtp()** - Minitab 
    - **read.spss()** - SPSS
    - **read.table()** - Arquivos txt
    - **read.csv()** - Arquivos csv
    - **read.delim()** - Leitura de arquivos delimitados

  ```R
    # Criando vetores
    pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
    nome = c("Maurício", "Pedro", "Aline", "Beatriz", "Marta")
    altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
    codigo = c(5001, 2183, 4702, 7965, 8890)

    # Criando um dataframe de diversos vetores
    pesquisa = data.frame(pais, nome, altura, codigo)
  ```
- ### Exercicios
  - Exercício	1	- Crie	um	vetor	com	12	números	inteiros

  -	Exercício	2	- Crie	uma	matriz	com	4	linhas	e	4	colunas	preenchida	com	números	inteiros

  -	Exercício	3	- Crie	uma	lista	unindo	o	vetor	e	matriz
  	criados	anteriormente

  -	Exercício	4	- Usando	a	função	read.table()	leia	o	arquivo	do	link	abaixo	para	uma	dataframe
    -	http://data.princeton.edu/wws509/datasets/effort.dat

  -	Exercício	5	- Transforme	o	dataframe	anterior,	em	um	dataframe	nomeado	com	os	seguintes	
    labels:
    -	c("config",	"esfc",	"chang")

  -	Exercício	6	- Imprima na tela o dataframe iris, verifique quantas dimensoes existem no dataframe iris, imprima um resumo do dataset iris	

  -	Exercício	7	- Crie	um	plot	simples	usando	as	duas	primeiras	colunas	do	dataframe	iris

  -	Exercício	8	- Usando	s	função	subset,	crie	um	novo	dataframe	com	o	conjunto	de	dados	do dataframe	iris	em	que	Sepal.Length >	7
    -	Dica:	consulte	o	help	para	aprender	como	usar	a	função	subset()

  -	Exercícios	9	- Crie	um	dataframe	que	seja	cópia	do	dataframe	iris	e	usando	a	função	slice(), divida	o	dataframe	em	um	subset	de 15	linhas
    -	Dica	1:	você	vai	ter	que	instalar	e	carregar	o	pacote	dplyr
    -	Dica	2:	consulte	o	help	para	aprender	como	usar	a	função	slice()

  -	Exercícios	10 - Use	a	função	filter	no	seu	novo	dataframe	criado	no	item	anterior	e	retorne	apenas	valores	em	que	Sepal.Length	>	6
    -	Dica:	use	o	RSiteSearch() para	aprender	como	usar	a	função	filter

- ### Extra : Comandos Úteis
  - Comandos	Básicos:
    - | Função  | Descrição |
      |   --    |    --     |
      | #         | Linhas começando	com	#	são	comentários|
      |getwd()    | Mostra	o	diretório	de	trabalho |
      |setwd("C:/RFundamentos") |Muda	o	diretório	de	trabalho|
      |ls() |Lista	os	objetos	criados	na	sessão|
      |dir() |Lista	os	arquivos	na	pasta	de	trabalho	atual|
      |rm() |Remove	o	objeto	entre	()|
      |rm(list=ls(all=TRUE)) |Remove	todos	os	objetos,	limpando	a	memória|
      |head() |Lista	as	6	primeiras	linhas	de	uma	planilha/lista|
      |read.table() |Lê	um	arquivo|
      |str() |Inspeciona	um	objeto	ou	função,	mostrando	seu detalhes	de estrutura|
      |library() |Carrega	um	pacote	que	já	está	no	computador|
      |class() |Verifica	o	tipo	de	um	objeto|

  - Operações	com	vetores,	matrizes,	listas	e	dataframes:
    - |Função |Descrição|
      | --    |   --    |
      |length() | Comprimento	do	vetor|
      |dim() |Dimensão	da	matriz|
      |sort() |Ordena	o	vetor	em	ordem	crescente|
      |rank() |Retorna	as	posições	que	cada	elemento	ocupa	no	vetor|
      |round() |Arredonda	o	vetor	com	o	número	de	casas	decimais	desejadas|
      |max()	/	min() |Retorna	o	valor	máximo	e	mínimo	do	vetor|
      |sum() |Soma	2	vetores|
      |solve() |Retorna	a	inversa	da	Matriz|
      |det() |Retorna	o	determinante	da	Matriz|
      |merge() |Faz	o	merge	de	dataframes|
      |names() |Retorna	o	nome	dos	objetos	na	lista|
      |append() |Acrescenta	conteúdo	de	uma	lista	a	outra|

  - Funcões	matemáticas:
    - |Função |Descrição|
      |  --   |   --    |
      |abs(x) |Valor	absoluto	de	x|
      |sin(x) |Seno	de	x|
      |cos(x) |Cosseno	de	x|
      |tan(x) |Tangente	de	x|
      |log(x) |Logaritmo	natural	de	x|
      |log(x,	b) |Logaritmo	de	x	com	base	b|
      |log10(x) |Logaritmo	de	x	com	base	10|
      |exp(x) |Exponencial	elevado	a	x|
      |round(x,	digits	=	n) |Arredonda	x	com	n	decimais|
      |ceiling(x) |Arredondamento	de	x	para	o	maior	valor|
      |floor(x) |Arredondamento	de	x	para	o	menor	valor|
      |length(x) |Número	de	elementos	do	vetor	x|

## :memo: Licença

Esse projeto está sob a licença MIT.

---
