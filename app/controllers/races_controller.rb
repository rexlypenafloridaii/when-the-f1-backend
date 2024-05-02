class RacesController < ApplicationController
  def index
    @races = Race.all
    render :index
  end

  def show
    @race = Race.find_by(id: params[:id])
    render :show
  end
end
