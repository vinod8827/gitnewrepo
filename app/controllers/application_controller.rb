class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session 
  before_action :authenticate_user

  def authenticate_user
    token = request.headers['Authorization']&.split&.last
    decoded_token = JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')

    user_id = decoded_token[0]['user_id']
    @current_user = User.find(user_id) # class var
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
end
