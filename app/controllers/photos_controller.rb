class PhotosController < ApplicationController
	def show
		@place = Place.find(params[:id])
		@photo = Photo.new
	end
	def create
	end	
end


