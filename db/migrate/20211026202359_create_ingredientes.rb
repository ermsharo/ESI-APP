class CreateIngredientes < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredientes do |t|
      t.string :name
      t.string :relevance

      t.timestamps
    end
  end
end
