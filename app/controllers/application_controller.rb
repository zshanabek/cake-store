class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :initialize_categories
	def initialize_categories
	  @categories = Category.all
	end
  
end
