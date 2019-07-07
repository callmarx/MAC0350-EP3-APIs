#!/bin/sh

# Usage info
show_help() {
echo -e " Autor deste script: Eugenio Augusto jimenes <eugeniojimenes@gmail.com> \n"
cat << EOF
    Modo de usar: \$ ./${0##*/} [-hbmsk]

    Script que entra em todas as pastas das APIs e executa comandos
    de Ruby/Rails com as seguintes opções (dadas as flags):

    -h          Exibe esta ajuda
    -b          Instala as dependencias em cada API
    -m          Deleta/Cria dbs, tabelas e valores de teste em cada API
    -s          Executa o web-server de cada API
    -k          Mata todos os web-server

EOF
exit 0
}
OPTIND=1
while getopts "hbmsk" option; do
  case "${option}" in
    h)
      show_help
      ;;
    b)
      ## Bundle install nas 5 APIs
      sh -c "cd ./m-acesso && echo \"Instalando gemas em ./m-acesso ... ... ...\" && bundle"
      sh -c "cd ./m-pessoa && echo \"Instalando gemas em ./m-pessoa ... ... ...\" && bundle"
      sh -c "cd ./m-curriculo && echo \"Instalando gemas em ./m-curriculo ... ... ...\" && bundle"
      sh -c "cd ./im-acesso-pessoa && echo \"Instalando gemas em ./im-acesso-pessoa ... ... ...\" && bundle"
      sh -c "cd ./im-pessoa-curriculo && echo \"Instalando gemas em ./im-pessoa-curriculo ... ... ...\" && bundle"
      ;;
    m)
      ## rails db:drop rails db:create rails db:migrate rails db:seed nas 5 APIs
      sh -c "cd ./m-acesso && echo \"Criando db, tabalas e inserções de teste do modulo m-acesso ... ... ...\" && rails db:drop && rails db:create && rails db:migrate && rails db:seed"
      sh -c "cd ./m-pessoa && echo \"Criando db, tabalas e inserções de teste do modulo m-pessoa ... ... ...\" && rails db:drop && rails db:create && rails db:migrate && rails db:seed"
      sh -c "cd ./m-curriculo && echo \"Criando db, tabalas e inserções de teste do modulo m-curriculo ... ... ...\" && rails db:drop && rails db:create && rails db:migrate && rails db:seed"
      sh -c "cd ./im-acesso-pessoa && echo \"Criando db, tabalas e inserções de teste do modulo im-acesso-pessoa ... ... ...\" && rails db:drop && rails db:create && rails db:migrate && rails db:seed"
      sh -c "cd ./im-pessoa-curriculo && echo \"Criando db, tabalas e inserções de teste do modulo im-pessoa-curriculo ... ... ...\" && rails db:drop && rails db:create && rails db:migrate && rails db:seed"
      ;;
    s)
      ## Roda servidor-web das 5 APIs
      sh -c "(echo \"Executando web-server de m-acesso... ...\"); (cd ./m-acesso && rails s -b 0.0.0.0 -p 3001 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-acesso/tmp/pids/server.pid) \")"
      sh -c "(echo \"Executando web-server de m-pessoa... ...\"); (cd ./m-pessoa && rails s -b 0.0.0.0 -p 3002 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-pessoa/tmp/pids/server.pid) \")"
      sh -c "(echo \"Executando web-server de m-curriculo... ...\"); (cd ./m-curriculo && rails s -b 0.0.0.0 -p 3003 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-curriculo/tmp/pids/server.pid) \")"
      sh -c "(echo \"Executando web-server de im-acesso-pessoa... ...\"); (cd ./im-acesso-pessoa && rails s -b 0.0.0.0 -p 3004 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./im-acesso-pessoa/tmp/pids/server.pid) \")"
      sh -c "(echo \"Executando web-server de im-pessoa-curriculo... ...\"); (cd ./im-pessoa-curriculo && rails s -b 0.0.0.0 -p 3005 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./im-pessoa-curriculo/tmp/pids/server.pid) \")"
      ;;
    k)
      ## Mata servidor-web das 5 APIs
      sh -c "kill \$(cat ./m-acesso/tmp/pids/server.pid)"
      sh -c "kill \$(cat ./m-pessoa/tmp/pids/server.pid)"
      sh -c "kill \$(cat ./m-curriculo/tmp/pids/server.pid)"
      sh -c "kill \$(cat ./im-acesso-pessoa/tmp/pids/server.pid)"
      sh -c "kill \$(cat ./im-pessoa-curriculo/tmp/pids/server.pid)"
      ;;

    *)
      show_help
      ;;
  esac
done
shift $((OPTIND-1))
