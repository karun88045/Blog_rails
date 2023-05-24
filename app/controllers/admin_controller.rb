class AdminController < ApplicationController
  before_action :authenticate_user!
  # def dashboard
  # end
  def index
    
  end
  def new
    # @cat = Category.new
  end
  def create
    # $cat = Category.create(category_params)
  end
  def edit
    # @cat = Category.find(params[:id])
  end
  # def category
  #   @cats = Category.all
  # end
  def show
  end
  def post
  end
  def user
  end
  def destroy
    # @cat = Category.find(params[:id])
  end

  # private

  # def category_params
  #   params.require(:category).permit(:title,:date)
  # end
end
