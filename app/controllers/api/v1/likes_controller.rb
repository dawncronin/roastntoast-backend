class Api::V1::LikesController < ApplicationController 

    def create
        like = Like.create(like_params)
        if like.valid?
            render json: { like: LikeSerializer.new(like)}, status: :created
        else
            render json: { error: 'failed to create like' }, status: :not_acceptable
        end
    end

    def destroy
        like = Like.find(params[:id])
        like.destroy
        render json: { destroy: params[:id]}
    end


    private

    def like_params
        params.require(:like).permit(:comment_id, :user_id)
    end
end