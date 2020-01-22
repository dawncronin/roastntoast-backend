class Api::V1::PicturesController < ApplicationController 
    def index
        pictures = Picture.all
        render json: PictureSerializer.new(pictures)
    end
end