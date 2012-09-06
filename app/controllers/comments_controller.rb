class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @post = Post.find(params[:post_id])
  end
  
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment])
    @comment.post_id = @post.id
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_comments_path(@post), notice: 'Comment created.' }
      else
        format.html { redirect_to post_comments_path(@post), notice: 'Comment NOT created.' }
      end
    end
  end
end
