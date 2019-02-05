class User

  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def add_recipe_card (recipe, date, rating)
    # Creates a new recipe card using the instance of user
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen (ingredient)
    Allergen.new(self, ingredient)
    end

  def allergens
    Allergen.all.select do  |allergen|
        allergen.user == self
      #compares each allergen... if its equal to the user
      # then will return subset of allergens array
    end.map do |allergen|
      allergen.ingredient
      end
  end

   # listed out
  # def ingredients
  #   allergens.map do |allergen|
  #     allergen.ingredient
  #   end
  # end

end