class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @cats = Category.all
  end
  def new
    @cat = Category.new
  end
  def create
    @cat = Category.create(category_params)
    redirect_to categories_path  
  end
  def edit
    @cat = Category.find(params[:id])
  end
  def update
    @cat = Category.find(params[:id])
    @cat.update(category_params)
    redirect_to categories_path
  end
  def show
  end
  def destroy
    @cat = Category.find(params[:id])
    @cat.destroy
    redirect_to categories_path

  end

  # private

  def category_params
    params.require(:category).permit(:title,:date)
  end
end


