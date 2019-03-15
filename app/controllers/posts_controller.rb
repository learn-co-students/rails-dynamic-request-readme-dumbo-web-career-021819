class PostsController < ActionController::Base
  def show
    @post = Post.find(params[:id])
  end
end
