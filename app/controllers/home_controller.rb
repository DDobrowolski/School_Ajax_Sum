class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def sum
    if params[:first] && params[:second]
      first = params[:first].to_f
      second = params[:second].to_f
      render json: { sum: first + second }
    else
      render json: { error: 'Error!' }
    end
  end
end
