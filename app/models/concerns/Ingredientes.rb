class Ingredientes < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome do ingredientes!" }
    validates :relevancia, numericality: { only_integer: true },  presence: { message: "É obrigatório informar a relevancia do ingrediente!" }
     #format: { with: URI::MailTo::EMAIL_REGEXP,  message: "Formato de e-mail inválido!" } 
end
