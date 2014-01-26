class PostsController < ApplicationController
  #home action shows all posts
  #get all data from database
  def home
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  #new -> create
  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to '/posts/new'
  end

  #edit -> update
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])   
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to '/posts/home'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts/home"
  end
end
