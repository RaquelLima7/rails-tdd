require 'pessoa'

describe 'Atributos' do

   # before(:each) do   #### 1 -nesse caso antes de cada teste ele vai pegar a var pessoa e colocar uma nova instancia da classe Pessoa
   #   @pessoa = Pessoa.new
   # end

   let(:pessoa) { Pessoa.new }  #### 3- nesse caso usa o let passando o nome da var e instanciando para poder usar

   it 'have_attributes' do
     pessoa.nome = "Jackson"
     pessoa.idade = 20

     expect(pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
   end

   it 'have_attributes' do   ### 2- quando chega nesse teste faz novamente o passo 1, pq é before each, antes de cada teste
     pessoa.nome = "Jose"
     pessoa.idade = 25

     expect(pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
   end
end
