class MoviesController < ApplicationController
def index
    @movies = Movie.all
  end
  
  def show
    @movie = Movie.find(params[:id])
  end
 
  def new
    @movie = Movie.new
  end
	
  def create
    @movie = Movie.new(movie_params)
 
      if @movie.save
        redirect_to action: "index"
      else
	    render action: "new" 
	  end
  end
  
 private
  def movie_params
    params.require(:movie).permit(:movietitle, :timings, :reviews)
  end
end
