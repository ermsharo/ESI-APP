class Ingrediente < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome do ingrediente!" }
    validates :relevancia,numericality: { only_integer: true },  presence: { message: "É obrigatório informar a relevancia do ingrediente!" }
end
