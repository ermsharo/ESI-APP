class CreateResultados < ActiveRecord::Migration[6.1]
  def change
    create_table :resultados do |t|
      t.string :nome
      t.string :ingredientes
      t.string :ingredientes_tag
      t.string :como_fazer
      t.string :imagem
      t.string :origem
      t.integer :relevancia

      t.timestamps
    end
  end
end
