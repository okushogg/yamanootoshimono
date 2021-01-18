class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
     @post = Post.find(params[:id])
    if @post.update
     redirect_to 'index'
    else
     render 'edit'
    end
  end
  
  def delete
    
  
  end
  
end
