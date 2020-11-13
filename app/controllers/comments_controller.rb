class CommentsController < ApplicationController
    before_action :authenticate_user
    before_action :ensure_correct_user, {only: [:destroy]}
    def create
        @comment = Comment.new(user_id: @current_user.id, 
            post_id: params[:post_id], 
            content: params[:content]
        )
        if @comment.save
            flash[:notice] = 'Comment Created'
            redirect_to("/posts/#{params[:post_id]}")
        else
            flash[:notice] = 'Comment Character Limit'
            redirect_to("/posts/#{params[:post_id]}")
        end
    end

    def destroy
        @comment = Comment.find_by(id: params[:id])
        post_id = @comment.post_id
        @comment.destroy
        flash[:notice] = 'Comment deleted'
        redirect_to("/posts/#{post_id}")
    end

    def ensure_correct_user
        @comment = Comment.find_by(id: params[:id])
        if @comment.user_id != @current_user.id
          flash[:notice] = "Unauthorized access" 
          redirect_to('/posts/index')
        end
      end
end