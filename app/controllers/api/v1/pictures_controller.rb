class Api::V1::PicturesController < ApplicationController 
    def index
        pictures = Picture.all
        render json: PictureSerializer.new(pictures)
    end

    def show
        picture = Picture.find(params[:id])
        render json: PictureSerializer.new(picture)
    end

    def create
        picture = Picture.create(picture_params)
        if picture.valid?
            render json: { picture: PictureSerializer.new(picture)}, status: :created
        else
            render json: { error: 'failed to create picture' }, status: :not_acceptable
        end
    end

    private

    def picture_params
        params.require(:picture).permit(:img_url, :roast_bio, :toast_bio, :user_id)
    end
end