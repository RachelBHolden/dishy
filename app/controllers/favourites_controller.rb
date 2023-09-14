class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[destroy]
  before_action :set_recipe, only: %i[new create]

  def index
    @favourites = current_user.favourites
  end

  # def show
  # @favourtie = Favourite.find(params[:id])
  # end


  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.recipe = @recipe
    @favourite.save!
      puts "recipe liked"
  end

  def destroy
    @favourite.destroy
  end
  private

  def favourite_params
    params.require(:favourite).permit(:recipe_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_favourite
    # @favourite = current_user.favourites.find(params[:id])
    @favourite = Favourite.find(params[:id])
  end

end
