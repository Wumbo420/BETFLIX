class PagesController < ApplicationController
  def index
    @disable_nav = true
  end
  def create
    render plain: params[:movie].inspect
  end
def signup
  @disable_nav = true
end
 
end