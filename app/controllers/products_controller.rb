class ProductsController < ApplicationController
  def index
    @products = Samples::Product.all
    @name = get_greeting(params[:name]? params[:name] : "joshua")
  end

  def show
    @product = Samples::Product.find(params[:id])
  end

  def new
    @product = Samples::Product.new
  end

  def create
    @product = Samples::Product.new(product_params)
    puts @product.inspect
    if @product.save
      redirect_to product_path(@product)
    else
      render action: :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  private
  def product_params
    params.require(:samples_product).permit(:name)
  end

  def get_greeting(name)
    "Hello, #{name.capitalize}!"
  end
end
