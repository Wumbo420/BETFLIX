# main Controller for adding movies
class MoviesController < ApplicationController
    def index
    @movies = Movie.all
    end
    
    def show
        @movie = Movie.find(params[:id])
    end    
    def new
        @movie = Movie.new
    end
    def create
         @movie = Movie.new(movie_params)
         
         @movie.save
         redirect_to @movie
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy

        redirect_to @movie
    end
    def edit
        @movie = Movie.find(params[:id])
    end
    def update
        @movie = movie.find(params[:id])
        
        if @movie.update(movie_params)
            redirect_to @movie
        else
            render 'edit'
        end
    end

end
private
    def movie_params
        params.require(:movie).permit(:title, :desc, :genres)
    end