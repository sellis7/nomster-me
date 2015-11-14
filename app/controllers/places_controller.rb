class PlacesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@places = Place.order("name").page(params[:page]).per(3)
	end

	def new
		@place = Place.new
	end

	def create
		@place = current_user.places.create(place_params)
		if @place.valid?
			redirect_to root_path
		else
			render :new, :status => :unprocessable_entity
		end
	end

	def show ## I think this will be where I need to update for Geocoder
		@place = Place.find(params[:id])
		@comment = Comment.new
	end

	# or with a method
  # geocoded_by :full_address
	# full_address is a method which take some model's attributes to get a formatted address for example

	def edit
		@place = Place.find(params[:id])

		if @place.user != current_user
			return render :text => 'Lacking Permissions', :status => :forbidden
		end
	end

	def update
		@place = Place.find(params[:id])
		if @place.user != current_user
			return render :text => 'Lacking Permissions', :status => :forbidden
		end

		@place.update_attributes(place_params)
		if @place.valid?
			redirect_to root_path
		else
			render :edit, :status => :unprocessable_entity
		end
	end

	def destroy
		@place = Place.find(params[:id])
		if @place.user != current_user
			return render :text => 'Lacking Permissions', :status => :forbidden
		end

		@place.destroy
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :address)
	end

end
