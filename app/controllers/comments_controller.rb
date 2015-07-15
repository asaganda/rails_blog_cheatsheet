class CommentsController < ApplicationController

  def create
    # this finds the post via :post_id
    @post = Post.find(params[:post_id])
    # defining comment as, .create is activerecord
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    # this leads back to that individual post the user is commenting on
    redirect_to post_path(@post)
  end

  def destroy
    # this finds the post via :post_id
    @post = Post.find(params[:post_id])
    # this finds the comments for the specific post
    @comment = @post.comments.find(params[:id])
    # this deletes the individual comment
    @comment.destroy
    # this redirects to the specific post we deleted comments from
    redirect_to post_path(@post)
  end
end
