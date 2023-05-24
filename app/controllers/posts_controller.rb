class PostsController < ApplicationController
  before_action :authenticate_user!
  # ActiveStorage::Current.url_options = base_url
  def index
    @posts = Post.all
    @categories = Category.all
    # if params[:title].present?
    # @posts = Post.where(title: params[:title])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to posts_path  
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to posts_path
  end
  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  # def cat_wise_post

  #   # category = Category.find_by(id: params[:category_id])
  #   @categories = Category.where("category_id LIKE ?", "%" + params[:category_id] + "%")
  # end

  private

  def post_params
    params.require(:post).permit(:image, :text, :author, :date, :category_id)
  end
end
