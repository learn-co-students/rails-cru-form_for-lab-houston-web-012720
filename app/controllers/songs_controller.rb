class SongsController < ApplicationController
    before_action :current_genre , only:[:show ,:update, :destroy ,:edit]
    def index
        @songs = Song.all
    end 

    def show 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 

    def new 
       @song = Song.new 
    end 
    def create
        @song = Song.create(song_params)
        redirect_to "/songs/#{@song.id}"
    end 

    def song_params
        params.require(:song).permit(:name , :artist_id , :genre_id)
    end
    
    def edit 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 

    def update 
        # @movie = Movie.find(params[:id])
        # current_movie
        @song.update(song_params)
        redirect_to "/songs/#{@song.id}"
    end 
 
    def current_genre
        @song = Song.find(params[:id])
    end 
end
