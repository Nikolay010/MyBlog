class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_posts, only: %i[show edit update delete]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to posts_path, notice: "Post was created"
    else
      render :new
    end
  end

  def show
    @post
  end

  def edit
    @post
  end

  def update
    @post

    if @post.update(posts_params)
      redirect_to post_path, notice: "Post was updated"
    else
      render :edit
    end
  end

  def delete
    @post.destroy
    redirect_to posts_path, notice: "Post was removed"
  end

  private

  def posts_params
    params.require(:Post).permit(:title, :content, :shared_url, :category)
  end

  def set_posts
    @post = Post.find(params[:id])
  end
end