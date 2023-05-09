class PostsController < ApplicationController
  before_action :set_post

  def show
    @post_presenter = PostPresenter.new(@post)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
