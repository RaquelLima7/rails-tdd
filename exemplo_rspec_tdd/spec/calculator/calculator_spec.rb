require 'calculator' #do a require where the file is

describe Calculator do #describe because it will describe about the element which in this case is the Calculator
# para ajudar a entender o que a classe pode depois do nome colocar uma virgula e explicar entre aspas o que é
  subject(:calc) { described_class.new() } #subject é a classe Calculator
  
  context '#div' do
    it 'divide by 0' do
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError) 
      expect{calc.div(3, 0)}.to raise_error("divided by 0")
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{calc.div(3, 0)}.to raise_error(/divided/)
    end
    #quando precisa interpletar o que está dentro nesse caso não foi feito uma var cahanda result para pegar
    #o resultado foi colocado direto no expect vai precisar trocar o () por {} 
  end
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
