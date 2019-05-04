# main Controller for adding movies
class MoviesController < ApplicationController
    def index
    @movies = Movie.all
    end
    
    def search  
      if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
      else  
        @parameter = params[:search].downcase  
        @results = Movie.all.where("lower(name) LIKE :search", search: @parameter)  
      end  
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
   
    def edit
        @movie = Movie.find(params[:id])
    end
   
    def update
        @movie = Movie.find(params[:id])
        
        if @movie.update(movie_params)
            redirect_to @movie
        else
            render 'edit'
        end
    end
   
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy

        redirect_to @movie
    end

end
private
    def movie_params
        params.require(:movie).permit(:poster, :title, :desc, :rating, :genres)
    end