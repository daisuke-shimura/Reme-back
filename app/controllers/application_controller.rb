class ApplicationController < ActionController::API
  def sample
    render json: { message: "こんにちは" }
  end
end
