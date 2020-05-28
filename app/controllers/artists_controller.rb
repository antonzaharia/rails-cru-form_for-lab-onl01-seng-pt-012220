class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params)
  end

  private
    def post_params
      params.require(:artist).permit(:name, :bio)
    end
end
