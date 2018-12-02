class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all.order(:created_at)  
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params
    redirect_to products_path
  end

  def edit
    
  end

  def update
    @product.update product_params
    redirect_to products_path
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:description, :provider, :unit_cost)
  end
end
