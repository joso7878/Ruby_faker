#Importando Gem
require 'faker'

#Criando uma classe de pessoa
class Pessoa
  attr_accessor :nome, :idade, :email
  
#Definindo parametros da classe "pessoa"
  def initialize(nome, idade, email)
    @nome = nome
    @idade = idade
    @email = email
  end

  def exibir_informacoes
    puts "Nome: #{@nome}"
    puts "Idade: #{@idade} anos"
    puts "Email: #{@email}"
  end
end

#Gerando dados falsos com Faker
nome = Faker::Name.name
idade = Faker::Number.between(from: 18, to: 65)
email = Faker::Internet.email

#Criando uma instância de Pessoa com dados falsos
pessoa = Pessoa.new(nome, idade, email)
pessoa.exibir_informacoes