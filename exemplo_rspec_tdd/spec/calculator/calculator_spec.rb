require 'calculator' #do a require where the file is

describe Calculator do #describe because it will describe about the element which in this case is the Calculator
  it 'sum method for two numbers' do
    calc = Calculator.new  #preparation
    result = calc.sum(5, 7) #exercise
    expect(result).to eql(12)  #what do you expect
  end

  it 'use sum method for 2 numbers with negative numbers' do
    calc = Calculator.new
    result = calc.sum(-5, 7)
    expect(result).to eql(2)
  end
end