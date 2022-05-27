class PagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @room = Room.new
    @posts = Post.all
  end
end
