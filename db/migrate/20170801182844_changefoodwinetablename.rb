class Changefoodwinetablename < ActiveRecord::Migration[5.0]
  def change
    rename_table :foodswines, :food_wines
  end
end
