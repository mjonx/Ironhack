class ProductsController < ApplicationController

  def create
    @product = Product.find_by(name: params[:user][:name])
    if @product
      redirect_to("/new")
    else
      product = Product.new(
      title: params[:product][:title],
      description: params[:product][:description])

      user.save

      redirect_to("/products")
    end
  end


end
