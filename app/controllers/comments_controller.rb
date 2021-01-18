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
      # UserのIDが渡っていないのが問題っぽい  
      @post = Post.find(params[:post_id])
      @comments = Comment.where(params[:id])
      render 'posts/show'
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.post = @post
    @user_id = current_user.id
  end

  def update
  end
  
  def destory
    @comment.destory
  end
  
 

private

  def comment_params
    params.require(:comment).permit(:content,:post_id,:user_id)
  end
  

end
