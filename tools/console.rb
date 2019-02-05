require_relative '../config/environment.rb'


user1 = User.new("Elmo")
user2 = User.new ("Bert")
user3 = User.new ("Ernie")

recipe1 = Recipe.new ("red velvet")
recipe2 = Recipe.new ("tomato soup")
recipe3 = Recipe.new (" pb&j")

i1 = Ingredient.new ("flour")
i2 = Ingredient.new ("sugar")
i3 = Ingredient.new ("buttermilk")

rc1 = RecipeCard.new(user1, recipe1, "12/15", 100)
rc2 = RecipeCard.new(user2, recipe2, "12/15", 200)
rc3 = RecipeCard.new(user3, recipe3, "5/19", 250)


ri1 = RecipeIngredient.new(recipe1, i1)
ri2 = RecipeIngredient.new(recipe2, i2)
ri3 = RecipeIngredient.new(recipe3, i3)
ri4 = RecipeIngredient.new(recipe3, i2)


allergen1 = Allergen.new(user1, i2)
allergen2 = Allergen.new(user2, i2)
allergen3 = Allergen.new(user3, i3)
binding.pry
0