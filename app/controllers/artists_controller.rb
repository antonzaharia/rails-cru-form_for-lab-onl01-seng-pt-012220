class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  private
    def post_params
      params.require(:artist).permit(:name, :bio)
end
