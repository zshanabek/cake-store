class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all    
  end
  

  def show
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

 
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        redirect_to @product
      else
        render :new 
      end
    end
  end

  def destroy
    @product.destroy  
    redirect_to @product
  end

  def update
    @product.update(product_params)
    redirect_to @product
  end
  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :description, :price, :discount, :category_id, :image)
    end
end
