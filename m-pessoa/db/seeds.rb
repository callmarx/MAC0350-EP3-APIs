# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pessoa1 = Pessoa.create(nusp: "7118981", cpf:"32904774874", pnome:"Eugenio", mnome:"Augusto", snome:"Jimenes", end_cep:"05353030", end_rua: "Rua Professor Celso Qurino dos Santos", end_numero: "112", end_complemento: "ap33 A2", data_nasc: Time.strptime("25/10/1985", "%d/%m/%Y"))
pessoa2 = Pessoa.create(nusp: "9573215", cpf:"82333728035", pnome:"Allana", mnome:"Eloá", snome:"Farias", end_cep:"68906122", end_rua: "Avenida Nepal", end_numero: "1503", end_complemento: nil, data_nasc: Time.strptime("26/09/1997", "%d/%m/%Y"))
pessoa3 = Pessoa.create(nusp: "8295741", cpf:"02548355462", pnome:"Ayla", mnome:"Flávia", snome:"Farias", end_cep:"31870390", end_rua: "Rua dos Apóstolos", end_numero: "32B", end_complemento: "ap43", data_nasc: Time.strptime("25/09/1985", "%d/%m/%Y"))
pessoa4 = Pessoa.create(nusp: "9536477", cpf:"25818955788", pnome:"Giovana", mnome:"Vanessa", snome:"Sales", end_cep:"57084406", end_rua: "Rua Em Projeto G", end_numero: "254", end_complemento: nil, data_nasc: Time.strptime("26/01/1994", "%d/%m/%Y"))
pessoa5 = Pessoa.create(nusp: "8443125", cpf:"76616985792", pnome:"Roberto", mnome:"Sebastião", snome:"da Paz", end_cep:"65600545", end_rua: "Travessa João Luis Albuquerque", end_numero: "sem numero", end_complemento: "ap57", data_nasc: Time.strptime("08/08/1987", "%d/%m/%Y"))
pessoa6 = Pessoa.create(nusp: "8567423", cpf:"12498872914", pnome:"Sara", mnome:"Tereza", snome:"Araújo", end_cep:"56304180", end_rua: "Rua Doutor Geraldo Estrela", end_numero: "87", end_complemento: "ap64", data_nasc: Time.strptime("26/11/1977", "%d/%m/%Y"))
pessoa7 = Pessoa.create(nusp: "4451378", cpf:"56267034895", pnome:"Edson", mnome:"Davi", snome:"Moreira", end_cep:"55811320", end_rua: "Rua Adilson Guedes de Oliveira", end_numero: "11A", end_complemento: "casa dos fundos", data_nasc: Time.strptime("25/06/1983", "%d/%m/%Y"))
pessoa8 = Pessoa.create(nusp: "9543217", cpf:"34946476822", pnome:"Leonardo", mnome:"Yuri", snome:"Sales", end_cep:"74477205", end_rua: "Rua CP 18", end_numero: "3", end_complemento: "segundo andar", data_nasc: Time.strptime("17/06/1997", "%d/%m/%Y"))
pessoa9 = Pessoa.create(nusp: "8456178", cpf:"16066255940", pnome:"César", mnome:"Enrico", snome:"Moura", end_cep:"76907606", end_rua: "Rua São João", end_numero: "821", end_complemento: "ap33", data_nasc: Time.strptime("07/12/1992", "%d/%m/%Y"))
pessoa10 = Pessoa.create(nusp: "9478123", cpf:"28970144315", pnome:"Calebe", mnome:"Edson", snome:"Monteiro", end_cep:"29162650", end_rua: "Beco da Assembléia de Deus", end_numero: "4031", end_complemento: nil, data_nasc: Time.strptime("09/10/1990", "%d/%m/%Y"))
pessoa11 = Pessoa.create(nusp: "8074315", cpf:"21773672630", pnome:"Lucca", mnome:"Francisco", snome:"Rafael", end_cep:"35057764", end_rua: "Rua Gonçalo Costa", end_numero: "1103", end_complemento: nil, data_nasc: Time.strptime("22/11/1981", "%d/%m/%Y"))

professor1 = Professor.create(instituto: "IAG-USP", sala: "25-B", salario: 16000.00, pessoa: pessoa5)
professor2 = Professor.create(instituto: "IME-USP", sala: "35-C", salario: 12000.00, pessoa: pessoa6)
Especialidade.create(professor: professor2, area_especialidade: "Data Science")
Especialidade.create(professor: professor2, area_especialidade: "Gestão de Negócios")
Especialidade.create(professor: professor1, area_especialidade: "Grafos")
Especialidade.create(professor: professor1, area_especialidade: "Inteligencia Artificial")

Administrador.create(cargo: "Diretor", salario: 24000.00, pessoa: pessoa7)
Administrador.create(cargo: "Supervisor", salario: 8000.00, pessoa: pessoa8)

Aluno.create(instituto: "IME-USP", curso: "Estatistica", semestre: 5, pessoa: pessoa1)
Aluno.create(instituto: "IME-USP", curso: "BCC", semestre: 7, pessoa: pessoa2)
Aluno.create(instituto: "IME-USP", curso: "BCC", semestre: 7, pessoa: pessoa3)
Aluno.create(instituto: "FEA-USP", curso: "Administracao", semestre: 3, pessoa: pessoa4)
Aluno.create(instituto: "IME-USP", curso: "BCC", semestre: 5, pessoa: pessoa9)
Aluno.create(instituto: "IME-USP", curso: "Estatistica", semestre: 3, pessoa: pessoa10)
Aluno.create(instituto: "FEA-USP", curso: "Contabilidade", semestre: 1, pessoa: pessoa11)
