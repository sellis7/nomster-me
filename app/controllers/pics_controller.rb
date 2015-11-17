class PicsController < ApplicationController
	def create
		@place = Place.find(params[:place_id])
		@place.pics.create(pic_params)
		redirect_to place_path(@place)
	end

	private

	def pic_params
		params.require(:pic).permit(:picture)
	end
end
