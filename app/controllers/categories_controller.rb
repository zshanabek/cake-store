class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, except:[:index, :show]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @categories = Category.all
  end
  

  def show
    @products = Product.all
  end

  def new
    @category = Category.new
  end

  def edit
  end

 
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new 
    end
  end

  def destroy
      @category.destroy
      redirect_to @category  
  end

  def update
    @category.update(category_params)
    redirect_to @category
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:title, :description)
    end
end
