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
    user = double('User').as_null_object # 1-declarou um dublê chamado user
    allow(user).to receive(:name).and_return('Jack') # 2-permitiu ele receber o nome e retornar Jack
    allow(user).to receive(:password).and_return('secret') # 3-permitiu ele receber o password e retornar secret
    puts user.name # 4-chamou os dois
    puts user.password
    user.abc # 5- não permitiu para o abc, nesses casos a gente pode ignorar esses erros que venham de
            # determinados dublês, quando tiver utilizando em conjunto com os mocks
            # quando quizer dispensar a mensagem, basta utilizar o as_null_object (como na linha 13)
            # assim qualquer chamada no dublê que ao final levante uma mensagem de erro ele vai simplesmente
            #transformar isso em um objeto de erro, um objeto nulo
  end
end