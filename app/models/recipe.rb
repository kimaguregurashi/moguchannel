class Recipe < ApplicationRecord
  
  belongs_to :customer
  belongs_to :genre
  has_many :recipe_ingredients
end
