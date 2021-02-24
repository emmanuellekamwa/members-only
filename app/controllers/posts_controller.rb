class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @posts = current_user.posts.build(params_filter)

    if @posts.save
      redirect_to root_path
    else
      render new
    end
  end

  def index
    @posts = Post.all
  end

  private

  def params_filter
    params.require(:post).permit(:title, :body)
  end
end
