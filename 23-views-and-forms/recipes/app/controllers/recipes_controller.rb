class RecipesController < ApplicationController

  def index
    render :index
  end

  def new
    render :new
  end

  def create
    recipe = Recipe.new(params[:recipe])
    recipe.title = params[:recipe][:title]
    recipe.quantity = params[:recipe][:quantity]
    recipe.save
  end
end
