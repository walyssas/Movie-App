class MoviesController < ApplicationController

	def index
		@movies = Movie.search_for(params[:q])
	end

	def show
		@movie = Movie.find(params[:id])
	end

end
