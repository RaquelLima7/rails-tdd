require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:bar) # mocks - comportamento => chamar esse método bar

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice #contagem, pode dizer quantas vezes quer que receba
    student.foo(123) #esses dois cumprem com a linha acima, pois está chamando o elemento duas vezes
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true) # esse (true) é fake, pois está dizendo o valor que espera
    puts student.foo(123)   #imprimi isso para poder ver, está forçando o retorno dele, o parâmetro que está esperando (123)
  end
end
