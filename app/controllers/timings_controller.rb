class TimingsController < ApplicationController
  def index
    @timings = current_movie.timings
  end
  
  def show
    @timing = Timing.find_by_id(params[:id])
  end
 
  def new
    @timing = Timing.new
  end
	
  def create
    @timing = Timing.new(timing_params)
 
      if @timing.save
        redirect_to action: "index"
      else
	    render action: "new" 
	  end
  end
  
 private
  def timing_params
    params.require(:timing).permit(:movietitle, :timings, :reviews)
  end
end
