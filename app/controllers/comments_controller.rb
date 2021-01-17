class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    @user_id = current_user.id
    if @comment.save
      redirect_to 'public/posts/show'
    else
      @post = Post.find(params[:post_id])
      @comments = Comment.where(params[:id])
      render 'public/posts/show'
    end
  end
  
  def edit
  end

  def update
  end
  
  def destory
    @comment.destory
  end
  
 

private

  def comment_params
    params.require(:comment).permit(:content,:post_id)
  end
  
end
