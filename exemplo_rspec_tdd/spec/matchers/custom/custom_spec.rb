RSpec::Matchers.define :be_a_multiple_of do |expected|   #passa o nome do matcher que quer criar como symbol
  # expected == 3 ele aceita um bloco que é o valor que está passando (3 da linha 20)
  # actual == subject == 18 (linha 5)

  match do |actual|   #bloco que vai testar de fato o que vc quer
    actual % expected == 0
  end

  failure_message do |actual|   #customizar o erro
    "expected that #{actual} would be a multiple of #{expected}"
  end

  description do #alterar o texto, para mostrar quando acerta
    "be a multiple of #{expected}"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3)}
end

# para rodar no terminal: rspec spec/matchers/custom
