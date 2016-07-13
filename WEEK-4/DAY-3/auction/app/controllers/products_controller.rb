class ProductsController < ApplicationController
  def index
    @products = Product.order(title: :asc)
  end

  def new
    @product = Product.new
    render 'new'
  end

  def create
    @product = Product.find_by(title: params[:product][:title])
    if @product
      redirect_to("products/new")
    else
      @product = Product.new(
      title: params[:product][:title],
      description: params[:product][:description],
      enddate: params[:product][:enddate],
      user_id: params[:product][:user_id])
      @product.save

      redirect_to "/products"
    end
  end
end
