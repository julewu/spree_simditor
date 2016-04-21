module Spree
  module Admin
    class PicturesController < ApplicationController
      def create
        @picture = Picture.new(picture_params)
        if @picture.save
          render json: {success: true, file_path: @picture.image.url}
        else
          render json: {success: false, msg: @picture.errors.full_messages}
        end
      end

      private

      def picture_params
        params.require(:picture).permit(:image)
      end
    end
  end
end
