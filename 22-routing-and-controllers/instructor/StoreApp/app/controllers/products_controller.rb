class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name        = params['product']['name']
    @product.description = params['product']['description']
    @product.cost        = params['product']['cost']
    @product.img_url     = params['product']['img_url']

    if @product.save
      redirect_to products_path
    else
      render 'new'
    end

  end

end
