class UsersController < ApplicationController

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
      redirect to "/"
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
      redirect to "/"
    else
      redirect to '/login'
    end
  end

  get '/logout' do
    if session[:user_id] != nil
      session.destroy
      redirect to "/login"
    else
      redirect to "/"
    end
  end
end
