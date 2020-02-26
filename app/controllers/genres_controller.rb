class GenresController < ApplicationController

  private

  def strong_params
    params.require(:genre).permit(:name)
  end
end
