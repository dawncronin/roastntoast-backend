class Api::V1::PictureDislikesController < ApplicationController 

    def create
        picture_dislike = PictureDislike.create(picture_dislike_params)
        if picture_dislike.valid?
            render json: { picture: PictureDislikeSerializer.new(picture_dislike)}, status: :created
        else
            render json: { error: 'failed to create picture_like' }, status: :not_acceptable
        end
    end

    def destroy
        picture_dislike = PictureDislike.find(params[:id])
        picture_dislike.destroy
        render json: { destroy: params[:id]}
    end


    private

    def picture_dislike_params
        params.require(:picture_dislike).permit(:picture_id, :user_id)
    end
end