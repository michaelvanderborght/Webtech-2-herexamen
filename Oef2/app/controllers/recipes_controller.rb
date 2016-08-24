class RecipesController < ApplicationController
  def index
      @test = Recipe.new("Sukiyaki", 35,["beef", "tofu", "negi", "shungiku", "shiitake", "shiratake noodles"])

  end
end

class Recipe
  def initialize(name,price,ingredients)
    @name = name
    @price = price
    @ingredients = Array.new
    @ingredients.concat(ingredients)
  end

  def getPrice()
    return @price
  end

  def getName()
    return @name
  end

  def getIngredients()
    return @ingredients
  end

  def addIngredients(ingredient)
    if !(@ingredients.include? ingredient)
    @ingredients.push(ingredient)
    end
  end
end
