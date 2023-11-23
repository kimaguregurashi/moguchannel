class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      
      t.string :dish_name
      t.text :dish_explanation
      t.integer :ingredient_number
      t.text :ingredient_process
      t.text :additional_explanation
      
  
      t.timestamps
    end
  end
end
