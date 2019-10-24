class CommentsController < ApplicationController
    before_action :find_comment, only: [:destroy]
    
    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            redirect_to hack_path(@comment.hack)
        else
            flash[:comment_errors] = @comment.errors.full_messages
            redirect_to hack_path(params(hack_id))
        end
    end

    # def edit  
    # end

    # def update
    #     @comment.update(comment_params)
    #     if @comment.valid?
    #         redirect_to comment_path
    #     else
    #         flash[:comment_errors] = @comment.errors.full_messages
    #         redirect_to comment_path
    #     end
    # end

    def destroy
        hack = @comment.hack
        @comment.destroy
        redirect_to hack_path(hack.id)
    end
 
  
    private

    def comment_params
        params.require(:comment).permit(:user_id, :hack_id, :content)
    end
  
    def find_comment
      @comment = Comment.find(params[:id])
    end
  
end
