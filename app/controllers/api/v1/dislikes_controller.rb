class Api::V1::DislikesController < ApplicationController 

    def create
        dislike = Dislike.create(dislike_params)
        if dislike.valid?
            render json: { picture: DislikeSerializer.new(dislike)}, status: :created
        else
            render json: { error: 'failed to create dislike' }, status: :not_acceptable
        end
    end

    def destroy
        dislike = Dislike.find(params[:id])
        dislike.destroy
        render json: { destroy: params[:id]}
    end


    private

    def dislike_params
        params.require(:dislike).permit(:comment_id, :user_id)
    end
end