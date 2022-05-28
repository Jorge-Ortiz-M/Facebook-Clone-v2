class PostsController < ApplicationController

  before_action :authenticate_user!

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      ActionCable.server.broadcast "post_channel", post: [@post, current_user.email]
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
