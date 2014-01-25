class PostsController < ApplicationController
  def new
    post = Post.new
  end


  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]

    if @post.save
      redirect_to "/posts/new"
    else
      render "new.html.erb"
    end
  end


  def show
    @post = Post.find(params[:id])
  end


  def index
    @posts = Post.all
  end


  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts/index/"
  end

end
