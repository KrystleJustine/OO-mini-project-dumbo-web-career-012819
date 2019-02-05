class Ingredient

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
    Allergen.all.select do |user|
      self == user.ingredient
    end
  end

  def self.most_common_allergen
    # place to reference to
    common = self.all[0]

    self.all.each do |ingredient|
      if ingredient.users.length > common.users.length
        common = ingredient
        end
    end
    common
  end

end


