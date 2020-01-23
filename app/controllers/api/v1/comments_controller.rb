class Api::V1::CommentsController < ApplicationController 
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find(params[:id])
        render json: CommentSerializer.new(comment)
    end

    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            render json: { comment: CommentSerializer.new(comment)}, status: :created
        else
            render json: { error: 'failed to create comment' }, status: :not_acceptable
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: { destroy: params[:id]}
    end


    private

    def comment_params
        params.require(:comment).permit(:text, :roast, :picture_id, :user_id)
    end  
end