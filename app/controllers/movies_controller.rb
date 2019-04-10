class MoviesController < ApplicationController
    def new
    end
    def create
         render plain: params[:movie].inspect
    end
end
