class CreateFoodsWines < ActiveRecord::Migration[5.0]
  def change
    create_table :foodswines do |t|
      t.integer :food_id
      t.integer :wine_id
    end
  end
end
