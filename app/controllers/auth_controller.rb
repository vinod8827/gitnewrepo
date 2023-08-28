class AuthController < ApplicationController
  skip_before_action :authenticate_user

  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id }, Rails.application.secret_key_base, 'HS256')
      session_set(user)
      render json: { token:, session_data: session, user_info: user }
    else
      render json: { error: 'user unautherized' }, status: :Unauthorized
    end
  end

  def session_set(user)
    session[:user_id] = user.id
    session[:name] = user.name
    session[:email] = user.email
  end

  def self.session_destroy
    session = {}
  end
end
