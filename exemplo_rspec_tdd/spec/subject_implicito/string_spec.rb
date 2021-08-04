require 'string_nao_vazia'

describe String do
   describe StringNaoVazia do # a classe mais interna é que vai referenciar o subject
     it "Não está vazia" do
        expect(subject).to eq("Não sou vazio")
     end
   end
end