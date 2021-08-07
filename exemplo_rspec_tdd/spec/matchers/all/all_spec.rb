#Está agrupando, está dizendo que esse tipo de teste é de collection (pode ser qualquer nome)
describe 'all', type: 'collection' do   #pode usar tbm collection:true
  it { expect([1,7,9]).to all( (be_odd).and be_an(Integer) )}
  it { expect(['ruby', 'rails']).to all( be_a(String).and include('r') )}
end


#na hora de rodar o teste pode utilizar tags para poder filtrar 
#quais são os tipos de testes que vai querer rodar

#vai apenas filtrar os testes que possuem essa tags
#rodar no terminal: rspec . -t collection  => quando utilizar collection:true
#rodar no terminal: rspec . -t type:collection  => quando utilizar type: 'collection'

#se quiser rodar por padrão, colocar --tag type:collection no arquivo .rspec
#pois quando rodar o rspec esse arquivo vai ser carregado

#se quiser negativar um teste, ou seja, não quer que o mesmo rode
#quando digitar o rspec, assim vai ter que utilizar um til ~ para negação
#utiliza o :slow - conforme do arquivo arrays_spec.rb
          # it '#contain_exactly', :slow do
          #   expect(subject).to contain_exactly(2,1,3) # se inclui tais elementos, pode colocar em ordens diferentes
          # end
#também colocar no arquivo .rspec
