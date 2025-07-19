class Public::ResultsController < ApplicationController
  def index
    results = Result.all
    render json: results
  end

  def show
    result = Result.find(params[:id])
    render json: result
  end
  
  def create
    result = Result.new
    user = current_user
    result.user_id = user.id

    result.save
    render json: result, status: :created
  end

end
