require 'pessoa'

describe 'Atributos' do

    before(:context) do
      puts ">>>>>>>>>> ANTES de TODOS os testes"
    end

    after(:all) do
      puts ">>>>>>>>>> DEPOIS de TODOS os testes"
    end

   # before(:each) do   #### substituiu pelo código da linha 23
   #   puts "ANTES"
   #   @pessoa = Pessoa.new
   # end

   # after(:each) do
   #  @pessoa.nome = "Sem nome!"
   #  puts "DEPOIS >>>>>>> #{@pessoa.inspect}"
   # end

   around(:each) do |teste| # 1-antes de cada teste, instancia uma nova pessoa 
    puts "ANTES" 
    @pessoa = Pessoa.new   # 6-depois que imprimir o nome vai e instancia uma nova pessoa 

    teste.run # roda o teste  #no around precisa fazer o disparo do teste, diferente do before e after das linhas 13 e 18

    @pessoa.nome = "Sem nome!"  # 4-depois que fizer o teste, volta e coloca sem nome
                                # 9 - depois muda para sem nome de novo
    puts "DEPOIS >>>>>>> #{@pessoa.inspect}"  # 5-imprimi para ver se realmente ficou sem nome
                                              # 10-e mostra
   end

   it 'have_attributes' do    # 2-preenche os dados
     @pessoa.nome = "Jackson"
     @pessoa.idade = 20

     expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))  #3-faz o teste
   end

   it 'have_attributes' do
     @pessoa.nome = "Jose"  # 7-add os valores
     @pessoa.idade = 25

     expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20)) # 8-faz os testes
   end
end