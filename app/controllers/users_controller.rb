class UsersController < ApplicationController

  get '/account' do
    redirect_to_login
    @user = current_user
    erb :'/users/show'
  end

  get '/signup' do
    erb :'/users/new'
  end

  post '/signup' do
    if params[:user][:username] == "" || params[:user][:password] == ""
      redirect to "/signup"
    elsif user = User.find_by(username: params[:user][:username])
      redirect to "/signup"
    else
      user = User.create(params[:user])
      session[:user_id] = user.id
      redirect to "/account"
    end
  end

  get '/login' do
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
      redirect to '/login'
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
