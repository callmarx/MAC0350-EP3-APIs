# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Curriculo.create(adm_id: 1, curso: "BCC", turma: "45", credito_acum: 110)
Curriculo.create(adm_id: 2, curso: "Administracao", turma: "32", credito_acum: 95)
disc1 = Disciplina.create(prof_id: 1, sigla: "MAC0350", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc2 = Disciplina.create(prof_id: 2, sigla: "EAC0111", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc3 = Disciplina.create(prof_id: 2, sigla: "AGA0210", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc4 = Disciplina.create(prof_id: 1, sigla: "MAC0328", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc5 = Disciplina.create(prof_id: 1, sigla: "MAC0219", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc6 = Disciplina.create(prof_id: 1, sigla: "MAC0425", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc7 = Disciplina.create(prof_id: 2, sigla: "EAE0310", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc8 = Disciplina.create(prof_id: 2, sigla: "EAE0514", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc9 = Disciplina.create(prof_id: 2, sigla: "AGA0293", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )
disc10 = Disciplina.create(prof_id: 2, sigla: "AGA0299", disc_data: Time.strptime("01/02/2019", "%d/%m/%Y") )

trilha = Trilha.create(nome: "Modelagem e Avaliação de Sistemas")
Modulo.create(trilha: trilha, nome: "Sistemas", disciplinas: [disc1, disc2, disc3])
Modulo.create(trilha: trilha, nome: "Sistemas Paralelos e Distribuídos", disciplinas: [disc4, disc5, disc6])
Modulo.create(trilha: trilha, nome: "Banco de Dados", disciplinas: [disc7, disc8, disc9])

trilha = Trilha.create(nome: "Inteligência Artificial")
Modulo.create(trilha: trilha, nome: "Introdução à IA", disciplinas: [disc2, disc3, disc4])
Modulo.create(trilha: trilha, nome: "Teoria associada à IA", disciplinas: [disc5, disc6, disc7])
Modulo.create(trilha: trilha, nome: "Visão Computacional", disciplinas: [disc8, disc9, disc10])

trilha = Trilha.create(nome: "Informática em Saúde")
Modulo.create(trilha: trilha, nome: "Bioinformática", disciplinas: [disc1, disc3, disc5])
Modulo.create(trilha: trilha, nome: "Matemática discreta", disciplinas: [disc2, disc4, disc6])
Modulo.create(trilha: trilha, nome: "Desenvolvimento de Software", disciplinas: [disc8, disc10, disc7])
