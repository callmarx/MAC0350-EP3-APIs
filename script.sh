# xargs -n 1 cp -v ./m-acesso/config/database.yml<<<"./m-pessoa/config/database.yml ./m-curriculo/config/database.yml ./im-acesso-pessoa/config/database.yml ./im-pessoa-curriculo/config/database.yml"
# xargs -n 1 cp -v ./m-acesso/config/application.rb<<<"./m-pessoa/config/application.rb ./m-curriculo/config/application.rb ./im-acesso-pessoa/config/application.rb ./im-pessoa-curriculo/config/application.rb"
# xargs -n 1 cp -v ./m-acesso/config/puma.rb<<<"./m-pessoa/config/puma.rb ./m-curriculo/config/puma.rb ./im-acesso-pessoa/config/puma.rb ./im-pessoa-curriculo/config/puma.rb"
# xargs -n 1 cp -v ./m-acesso/Gemfile<<<"./m-pessoa/Gemfile ./m-curriculo/Gemfile ./im-acesso-pessoa/Gemfile ./im-pessoa-curriculo/Gemfile"

## Bundle install nas 5 APIs
sh -c "cd ./m-acesso && echo \"Instalando gemas em ./m-acesso ... ... ...\" && bundle install"
sh -c "cd ./m-pessoa && echo \"Instalando gemas em ./m-pessoa ... ... ...\" && bundle install"
sh -c "cd ./m-curriculo && echo \"Instalando gemas em ./m-curriculo ... ... ...\" && bundle install"
sh -c "cd ./im-acesso-pessoa && echo \"Instalando gemas em ./im-acesso-pessoa ... ... ...\" && bundle install"
sh -c "cd ./im-pessoa-curriculo && echo \"Instalando gemas em ./im-pessoa-curriculo ... ... ...\" && bundle install"

## Roda servidor-web das 5 APIs
sh -c "(echo \"Executando web-server de m-acesso... ...\"); (cd ./m-acesso && rails s -b 0.0.0.0 -p 3001 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-acesso/tmp/pids/server.pid) \")"
sh -c "(echo \"Executando web-server de m-pessoa... ...\"); (cd ./m-pessoa && rails s -b 0.0.0.0 -p 3002 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-pessoa/tmp/pids/server.pid) \")"
sh -c "(echo \"Executando web-server de m-curriculo... ...\"); (cd ./m-curriculo && rails s -b 0.0.0.0 -p 3003 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./m-curriculo/tmp/pids/server.pid) \")"
sh -c "(echo \"Executando web-server de im-acesso-pessoa... ...\"); (cd ./im-acesso-pessoa && rails s -b 0.0.0.0 -p 3004 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./im-acesso-pessoa/tmp/pids/server.pid) \")"
sh -c "(echo \"Executando web-server de im-pessoa-curriculo... ...\"); (cd ./im-pessoa-curriculo && rails s -b 0.0.0.0 -p 3005 &> /dev/null &) && (sleep 2 && echo \"... ... executando sob PID=\$(cat ./im-pessoa-curriculo/tmp/pids/server.pid) \")"

## Mata servidor-web das 5 APIs
sh -c "kill \$(cat ./m-acesso/tmp/pids/server.pid)"
sh -c "kill \$(cat ./m-pessoa/tmp/pids/server.pid)"
sh -c "kill \$(cat ./m-curriculo/tmp/pids/server.pid)"
sh -c "kill \$(cat ./im-acesso-pessoa/tmp/pids/server.pid)"
sh -c "kill \$(cat ./im-pessoa-curriculo/tmp/pids/server.pid)"

## rails db:reset nas 5 APIs
sh -c "cd ./m-acesso && echo \"Criando db, tabalas e inserções de teste do modulo m-acesso ... ... ...\" && rails db:reset"
sh -c "cd ./m-pessoa && echo \"Criando db, tabalas e inserções de teste do modulo m-pessoa ... ... ...\" && rails db:reset"
sh -c "cd ./m-curriculo && echo \"Criando db, tabalas e inserções de teste do modulo m-curriculo ... ... ...\" && rails db:reset"
sh -c "cd ./im-acesso-pessoa && echo \"Criando db, tabalas e inserções de teste do modulo im-acesso-pessoa ... ... ...\" && rails db:reset"
sh -c "cd ./im-pessoa-curriculo && echo \"Criando db, tabalas e inserções de teste do modulo im-pessoa-curriculo ... ... ...\" && rails db:reset"
