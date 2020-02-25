class GenresController < ApplicationController
    before_action :current_movie , only:[:show ,:update, :destroy ,:edit]
    def index
        @genres = Genre.all
    end 

    def show 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 

    def new 
       @genre = Genre.new 
    end 
    def create
        @genre = Genre.create(g_p)
        redirect_to "/genres/#{@genre.id}"
    end 

    
    def edit 
        # @movie = Movie.find(params[:id])
        # current_movie
    end 
    
    def update 
        # @movie = Movie.find(params[:id])
        # current_movie
        @genre.update(g_p)
        redirect_to "/genres/#{@genre.id}"
    end 
    
    def current_movie
        @genre = Genre.find(params[:id])
    end 
    def g_p
        params.require(:genre).permit(:name)
    end
end
