require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!") #enviar o sentimento que estiver chegando no #{sentimento}
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  #primeiro tem que colocar o nome do teste que nesse caso é status e depois o params
  #vai utilizar no teste compartilhado na linha 3
  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente

  # it 'feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq("Sentindo-se Feliz!")
  # end

  # it 'triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq("Sentindo-se Triste!")
  # end

  # it 'contente!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq("Sentindo-se Contente!")
  # end

end


# para poder rodar no terminal: rspec spec/shared_examples