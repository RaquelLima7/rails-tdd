require 'calculator' #do a require where the file is

describe Calculator do #describe because it will describe about the element which in this case is the Calculator

  subject(:calc) { described_class.new() } #subject é a classe Calculator
  context '#sum' do # context para poder agrupar os tipos de testes #sum referring to an instance method's name
    it 'positive numbers' do
      result = calc.sum(5, 7) #exercise  
      expect(result).to eql(12)  #what do you expect
    end

    it 'negative and positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).to eql(2)
    end

    xit 'negative numbers' do #acrescenta o x na frente para deixar o teste pendente
      result = calc.sum(-5, -7)
      expect(result).to eql(-12)
    end
  end
end