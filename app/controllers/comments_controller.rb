class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    @user_id = current_user.id
    binding.pry
    if @comment.save
      redirect_to 'posts/show'
    else
      @post = Post.find(params[:post_id])
      @comments = Comment.where(params[:id])
      render 'posts/show'
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to 'post/show'
    else
      @comments = Comment.where(params[:id])
      @post = Post.find(params[:post_id])
      render 'edit'
    end
  end
  
  def destory
    @comment.destory
  end
  
 

private

  def comment_params
    params.require(:comment).permit(:content,:post_id,:user_id)
  end
  

end
