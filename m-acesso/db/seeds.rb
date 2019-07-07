# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usuario.create(email:"eugenio.jimenes@usp.br", password: "123456", password_confirmation: "123456")
Usuario.create(email:"aallanaeloafarias@enox.com.br", password: "icFgtkKbdW", password_confirmation: "icFgtkKbdW")
Usuario.create(email:"liviasandraalmeida@gmail.com", password: "J6Ira9E7jh", password_confirmation: "J6Ira9E7jh")
Usuario.create(email:"giovanavanessasales@hotmail.com", password: "CJt3RjzyKj", password_confirmation: "CJt3RjzyKj")
Usuario.create(email:"mmartinlorenzoseverinoviana@uol.com.br", password: "0RtSucatsa", password_confirmation: "0RtSucatsa")
Usuario.create(email:"rrobertosebastiaodapaz@gmail.com", password: "FRFEJl0U65", password_confirmation: "FRFEJl0U65")
servico = Servico.create(criar: false, deletar: false, atualizar: false, ler: true)
Perfil.create(servico: servico, data_cria: Time.now)
servico = Servico.create(criar: true, deletar: true, atualizar: true, ler: true)
Perfil.create(servico: servico, data_cria: Time.now)
servico = Servico.create(criar: true, deletar: false, atualizar: true, ler: true)
Perfil.create(servico: servico, data_cria: Time.now)
servico = Servico.create(criar: false, deletar: false, atualizar: true, ler: true)
Perfil.create(servico: servico, data_cria: Time.now)
servico = Servico.create(criar: true, deletar: false, atualizar: false, ler: true)
Perfil.create(servico: servico, data_cria: Time.now)
servico = Servico.create(criar: true, deletar: false, atualizar: true, ler: false)
Perfil.create(servico: servico, data_cria: Time.now)
