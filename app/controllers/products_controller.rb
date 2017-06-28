class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_admin, except:[:index, :show]


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
<<<<<<< HEAD
    if @product.save
      redirect_to @product
    else
      render :new 
    end
=======

      if @product.save
        redirect_to @product
      else
        render :new 
      end

>>>>>>> 19427de0a455bb49c962bfa54afd130ed801e40c
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
