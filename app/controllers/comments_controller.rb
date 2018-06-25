class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comment.create(params[:comment].permit(:description))
        redirect_to post_path(@post)
    end

    def show
        
    end

    def destroy
        
    end
    
    
end
