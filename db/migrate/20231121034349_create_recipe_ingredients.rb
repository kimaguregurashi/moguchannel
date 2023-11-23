class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      
      t.string :ingredient
      t.string :quantity

      t.timestamps
    end
  end
end
