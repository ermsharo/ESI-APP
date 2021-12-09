class Resultado < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome da receita!" }
    validates :ingredientes , presence: { message: "É obrigatório informar o texto com os ingredientes!" }
    validates :ingredientes_tag , presence: { message: "É obrigatório informar a tag com os ingredientes no formato ingrediente, ingrediente, ingrediente" }
    validates :como_fazer,  presence: { message: "É obrigatório informar como realizar a receita" }
   
end
