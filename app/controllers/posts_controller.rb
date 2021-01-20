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
    if @post.update(post_params)
     redirect_to post_path(@post),flash:{notice:'投稿の編集を完了しました。'}
    else
     render 'edit'
    end
  end
  
  def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to root_path,flash:{notice:'投稿を削除しました。'}
  end
  
  private
  def post_params
    params.require(:post).permit(:prefecture_id, :place_id, :item_genre_id, :found_day, :detail, :strage_place, :is_solved, post_images_images: [] )
  end
  
end
