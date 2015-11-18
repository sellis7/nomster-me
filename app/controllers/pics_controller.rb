class PicsController < ApplicationController
	def create
		@place = Place.find(params[:place_id])
		@place.pics.create(pic_params)
		redirect_to place_path(@place)
	end

	private

	def pic_params
		params.require(:pic).permit(:caption, :picture, :place_id)
	end
end
