class CreateIngredientes < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredientes do |t|
      t.string :nome
      t.string :relevancia

      t.timestamps
    end
  end
end
