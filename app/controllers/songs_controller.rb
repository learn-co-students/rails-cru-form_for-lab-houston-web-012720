class SongsController < ApplicationController

  before_action :get_neibours, only: [:new, :edit]



  private

  def get_neibours
    @artists = Artist.all
    @genres = Genre.all
  end

  def strong_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
