class RecipesController < ApplicationController
end

class Recipe
  def initialize(name,price,ingredients)
    @name = name
    @price = price
    @ingredients = Array.new
    @ingredients.concat(ingredients)
  end

  def getPrice()
    puts @price
  end

  def getName()
    puts @name
  end

  def getIngredients()
    puts @ingredients
  end

  def addIngredients(ingredient)
    @ingredients.push(ingredient)
  end
end
