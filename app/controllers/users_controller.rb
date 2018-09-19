class UsersController < ApplicationController

  get '/account' do
    redirect_to_login
    @error = params[:error]
    @user = current_user
    erb :'/users/show'
  end

  get '/signup' do
    if !logged_in?
      erb :'/users/new'
    else
      redirect to "/account?error=you are already logged in as #{current_user.username}"
    end
  end

  post '/signup' do
    if user = User.find_by(username: params[:user][:username])
      redirect to "/signup"
    else
      user = User.create(params[:user])
      session[:user_id] = user.id
      redirect to "/account"
    end
  end

  get '/login' do
    if logged_in?
      redirect to "/account"
    end
    @error = params[:error]
    if !session[:user_id]
      erb :'/users/login'
    else
      redirect to "/"
    end
  end

  post '/login' do
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      @teams = Team.all
      redirect to "/account"
    else
      redirect to '/login?error=invalid login credentials'
    end
  end

  get '/logout' do
    if session[:user_id] != nil
      session.destroy
      redirect to "/"
    else
      redirect to "/"
    end
  end
end
