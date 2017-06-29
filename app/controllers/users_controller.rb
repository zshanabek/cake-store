class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :check_admin, except:[:index, :show]


  def index
    @users = User.all    
  end

  def show
  end

  
  def destroy
    @user.destroy  
    redirect_to @user
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
