class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
      @post = Post.find(params[:post_id])
      # @comment = @post.comments.create(params[:comment].permit(:description))
      @comment = @post.comments.build(comment_params)
      @comment.user = current_user
      
      if @comment.save
      #   ActionCable.server.broadcast "comments", render(partial: 'comments/comment', object: @comment)
        flash[:success] = "Comment was created successfully"
        redirect_to post_path(@post)
      else
        flash[:danger] = "Comment was not created"
        redirect_back fallback_location: post_path(@post)
      end
    end


  def destroy
     @post = Post.find(params[:post_id]) 
     @comment = @post.comment.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
  end
  
  def comment_params
      params.require(:comment).permit(:description)
  end
end
