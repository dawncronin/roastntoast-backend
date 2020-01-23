class Api::V1::PictureLikesController < ApplicationController 

    def create
        picture_like = PictureLike.create(picture_like_params)
        if picture_like.valid?
            render json: { picture: PictureLikeSerializer.new(picture_like)}, status: :created
        else
            render json: { error: 'failed to create picture_like' }, status: :not_acceptable
        end
    end

    def destroy
        picture_like = PictureLike.find(params[:id])
        picture_like.destroy
        render json: { destroy: params[:id]}
    end


    private

    def picture_like_params
        params.require(:picture_like).permit(:picture_id, :user_id)
    end
end