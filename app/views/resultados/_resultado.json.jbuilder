json.extract! resultado, :id, :nome, :ingredientes, :ingredientes_tag, :como_fazer, :imagem, :origem, :relevancia, :created_at, :updated_at
json.url resultado_url(resultado, format: :json)
