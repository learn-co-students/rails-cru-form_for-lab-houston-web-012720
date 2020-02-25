class ArtistsController < ApplicationController
    before_action :current_movie , only:[:show ,:update, :destroy ,:edit]
    def index
        @artists = Artist.all
    end 

    def show 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 

    def new 
       @artist = Artist.new 
    end 
    def create
        @artist = Artist.create(artist_params)
        redirect_to "/artists/#{@artist.id}"
    end 

    def artist_params
        params.require(:artist).permit(:name , :bio)
    end
    
    def edit 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 

    def update 
        # @movie = Movie.find(params[:id])
        # current_movie
        @artist.update(artist_params)
        redirect_to "/artists/#{@artist.id}"
    end 
 
    def current_movie
        @artist = Artist.find(params[:id])
    end 
end
