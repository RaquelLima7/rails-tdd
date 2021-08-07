RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), "Array", type: 'collection' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1) # elementos para verificar se include
  end

  it { expect(subject).to exclude(4) } #nesse caso é para excluir o 4

  it '#contain_exactly', :slow do
    expect(subject).to contain_exactly(2,1,3) # se inclui tais elementos, pode colocar em ordens diferentes
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3]) #ser extamente igual, pode colocar fora de ordem
  end
end