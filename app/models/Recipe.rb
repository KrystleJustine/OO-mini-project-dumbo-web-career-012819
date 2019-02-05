class Recipe

  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

   def users
     RecipeCard.all.select do |user|
         user.recipe == self
     end
     end


     def self.most_popular
       #start with a variable called popular.. make this
       # the most popular by default
       popular = self.all[0]
       # iterate through each recipe
        self.all.each do |recipe|
        if recipe.users.length > popular.users.length
         # if the recipe instance is greater than popular
         # then switch it
          popular = recipe
        end
        end
       popular
     end


  def ingredients
    RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end.map do |allergen|
      allergen.ingredient
    end


    def allergens
      Allergen.all.select do |allergen|
         allergen.ingredient
      self.ingredients.include?(allergen.ingredient)
      end

      def add_ingredients (ingredients)
        # Given an array of ingredients we need to iterate
        # over each ingredient OF that array and create a new
        # recipeIngredient card
        ingredients.each do |ingredient|
         RecipeIngredient.new(self, ingredient)
        end
      end

      end

  end




end