class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post_id = @post.id
    @comment.user_id = current_user.id
    if @comment.save!
      redirect_to post_path(@post),flash:{notice:'コメントを追加しました。'}
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
      redirect_to 
    else
      @comments = Comment.where(params[:id])
      @post = Post.find(params[:post_id])
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
     @comment.destroy
    redirect_to post_path(@post)
  end
  
 

private

  def comment_params
    params.require(:comment).permit(:content)
  end
  

end
