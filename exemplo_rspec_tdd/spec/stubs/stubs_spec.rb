require 'student'
require 'course'

# stubs força uma resposta específica para um determinado método de um objeto colaborador
describe 'Stub' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)  #está forçando uma resposta - estudante vai receber o has_finished
      .with(an_instance_of(Course))            #com uma instância de curso, ou seja, utilizando um colaborador e dentro desse método chamaria o curso
      .and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "olá"
      elsif arg == :hi
        "Hi!!!"
      end
    end

    expect(student.foo(:hello)).to eq("olá")
    expect(student.foo(:hi)).to eq("Hi!!!")
  end

  it 'Qualquer instância de Classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Erros' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end
end
