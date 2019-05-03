class PagesController < ApplicationController

  def create
    render plain: params[:movie].inspect
  end

 
end