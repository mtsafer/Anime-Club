class AnimesController < ApplicationController
  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(whitelist)
    if @anime.save
      flash[:success] = "#{@anime.title} has been added to the list!"
      redirect_to root_path
    else
      flash.now[:warning] = "Something went wrong! Check the required fields."
      render :new
    end
  end

  def update
  	
  end

  def index
  	@anime = Anime.all
  end

  def show
  	@anime = Anime.find(params[:id])
  end

  def edit
  	@anime = Anime.find(params[:id])
  end

  private 

  def whitelist
    params.require(:anime).permit(:title, :director, :year,
                                  :about, :link, :image)
  end
end
