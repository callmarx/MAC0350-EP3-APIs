# EXERCÍCIO-PROGRAMA III: FINALIZAÇÃO E DEPLOYMENT

#### Resumo
Projeto final da disciplina MAC0350 - Introdução ao Desenvolvimento de Sistemas de Software, ministrada no 1º semestre de 2019 pelo professor [João Eduardo Ferreira](https://www.ime.usp.br/~jef/) e o monitor [Décio Lauro Soares](https://github.com/deciolauro) ao curso de Bacharelado em Ciências da Computação no Instituto de Matemática e Estatística da Universidade São Paulo.

#### Integrantes
* Eugenio Augusto Jimenes NºUSP: 7118981 eugenio.jimenes@usp.br
* Andre Akira Hayashi NºUSP: 9293011 andre.hayashi@usp.br

## Instalação do Ruby e do Rails
#### RVM
Execute em seu terminal linux:
```
$ gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ \curl -sSL https://get.rvm.io | bash
```

Certifique-se que seu terminal linux esta com a opção *run coomand as login shell* que pode ser habiltado em *Preferences > Profiles > Command*.

#### Ruby
Feito o item anterior, instale a versão 2.5.3 do ruby e à selecione como *default* pelo seu rvm:
```
$ rvm install 2.5.3
...
$ rvm use 2.5.3 --default
```

Caso tudo estaja certo, você deve obter o seguinte:
```
$ ruby -v
ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
```
Podendo mudar no final da versão dependendo do seu linux.

#### Rails
Execute:
```
$ gem install rails -v 5.2.3
```
você deve obter o seguinte:
```
$ rails -v
Rails 5.2.3
```
#### Bundle
Utilizamos o bundle 2, logo você deve obter:
```
$ bundle -v
Bundler version 2.0.1
```
Caso seja uma versão menor execute:
```
$ gem install bundle
```

## PostgreSQL
Certifique-se que voce possui a versão 9.4 ou maior. Para instalação e configuração veja na documtentação oficial da sua distribuição linux. Neste projeto utilizamos a versão 11.4
```
$ postgres -V
postgres (PostgreSQL) 11.4
```

## Dependências, banco de dados e execução das APIs
OBS: Usaremos o [script.sh](script.sh) para executar os comandos necessarios nas 5 APIs. Isto deve ser feito na pasta raíz do projeto.

#### Instalação de dependências
```
$ ./script.sh -b
```

#### Criação de bancos, tabelas e dados de teste
```
$ ./script.sh -m
```

#### Execução dos web-server
```
$ ./script.sh -s
```
#### Matar execução dos web-server
```
$ ./script.sh -k
```
#### Observação
As APIs utilizam variáveis ambiente que foram definadas no arquivo [env-var.env](env-var.env), configrado via [dotenv-rails](https://github.com/bkeepers/dotenv).

## Uso/testes das APIs
Com o comando de execução dos web-servers do item anterior basta utilizar sua ferramente de preferência para testar as requisições (Ex: Postman, curl, Ruby NET::Http, etc)
#### Postman
Link da coleção do Postman com diversas requisições já montadas das APIs
https://www.getpostman.com/collections/c362eaaf86d55b8397b5

#### URLs das APIs
###### m-acesso: http://localhost:3001
###### m-pessoa: http://localhost:3002
###### m-curriculo: http://localhost:3003
###### im-acesso-pessoa: http://localhost:3004
###### im-pessoa-curriculo: http://localhost:3005
