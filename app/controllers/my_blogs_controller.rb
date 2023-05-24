class MyBlogsController < ApplicationController
  def index
    visitor = Visitor.first.increment!(:count)
    visitor.save
    @posts = Post.all
    @categories = Category.all
  end


  # def search
  #   category = Category.find_by(title: params[:title])
  #   @posts = Post.where("category_id LIKE ?", "%" + "#{category.id}" + "%")
  # end

  def search

    category = Category.find_by(id: params[:title])
    @posts = Post.where("category_id LIKE ?", "%" + params[:category_id] + "%")
    # debugger
  end

  # def cat_wise_post
  #   @posts = Post.where(category_id: params[:category_id])
  # end
 
end
