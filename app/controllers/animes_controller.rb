class AnimesController < ApplicationController
  def new
  end

  def create

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
end
