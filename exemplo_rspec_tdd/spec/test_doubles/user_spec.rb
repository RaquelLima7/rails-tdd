describe 'Test Double' do
  it '--' do
    user = double('User') #identificando um dublê com o User entre parenteses - é a classe falsa para esse dublê
                          #criou um objeto a partir de uma classe User. user objeto falso de usuário e dentro desse objeto falso
                          #ele já responde a name e password pq permitiu (linhas 6 e 7)
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
    user.abc
  end
end