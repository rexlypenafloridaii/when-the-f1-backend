class RacesController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    response = HTTP.get("https://api.openf1.org/v1/sessions?year=2024&session_type=Race&session_name=Race")
    data = response.parse
    render json: data
  end

  def show
    @race = current_user.races.find_by(id: params[:id])
    render :show
  end
end
