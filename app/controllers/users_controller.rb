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
    erb :'/users/login'
  end

  post '/login' do
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      redirect to "/"
    else
      redirect to '/login'
    end
  end
end
