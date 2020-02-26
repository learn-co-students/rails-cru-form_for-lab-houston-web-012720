class ArtistsController < ApplicationController


  private

  def strong_params
    params.require(:artist).permit(:name, :bio)
  end
  
end
