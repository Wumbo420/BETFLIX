class PagesController < ApplicationController
  def index
  end
  def create
    render plain: params[:movie].inspect
  end
end
