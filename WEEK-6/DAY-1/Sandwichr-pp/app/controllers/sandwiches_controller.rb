class SandwichesController < ApplicationController
  def index
    @sandwiches = Sandwich.all
  end

  def detailed
  	@sandwich = Sandwich.find_by(id: params[:id])
  	@ingredients = @sandwich.ingredients.all
  	 @ingredients_all = Ingredient.all

  end

  def add_ingredient

  	a = params[:id_s]
  	sandwich = Sandwich.find_by(id: params[:id_s])
  	ingredient = Ingredient.find_by(id: params[:id_i])

  	sandwich.ingredients.push(ingredient)

  	redirect_to "/sandwiches/detailed/#{params[:id_s]}"
  end

  def delete_ingredient

  	a = params[:id_s]
  	sandwich = Sandwich.find_by(id: params[:id_s])
  	ingredient = Ingredient.find_by(id: params[:id_i])

  	sandwich.ingredients = sandwich.ingredients.select {|x| x != ingredient}

  	redirect_to "/sandwiches/detailed/#{params[:id_s]}"
  end



  def create
    sandwich = Sandwich.create(sandwich_params)
    render json: sandwich
  end

  def show
    sandwich = Sandwich.find_by(id: params[:id])
    unless sandwich
      render json: {error: "sandwich not found"},
      status: 404
      return
    end
    render json: sandwich
  end

  def update
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.update(sandwich_params)
	  render json: sandwich
	end

  def destroy
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.destroy
	  render json: sandwich
	end

  private

	def sandwich_params
	  params.require(:sandwich)
	    .permit(:name, :bread_type)
	end

end
