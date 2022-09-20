class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
   @post = Post.new 
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:text, :image)
  end
end
