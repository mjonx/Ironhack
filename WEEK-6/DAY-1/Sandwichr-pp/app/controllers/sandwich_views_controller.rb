class SandwichViewsController < ApplicationController
  def index
    render 'index'
    @sandwiches = Sandwich.all
  end

  def detailed
    @sandwiches = Sandwich.find_by(id: params[:id])
    @ingredients = Ingredient.find_by
  end
end
