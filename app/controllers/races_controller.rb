class RacesController < ApplicationController
  before_action :authenticate_user

  def index
    @races = current_user.races
    render :index
  end

  def show
    @race = current_user.races.find_by(id: params[:id])
    render :show
  end
end
