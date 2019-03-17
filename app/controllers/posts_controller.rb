class PostsController < ApplicationController
  # self.per_form_csrf_tokens = true

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
