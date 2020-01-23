class Api::V1::PicturesController < ApplicationController 
    def index
        pictures = Picture.all
        render json: PictureSerializer.new(pictures)
    end

    def show
        picture = Picture.find(params[:id])
        render json: PictureSerializer.new(picture)
    end
end