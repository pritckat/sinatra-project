class UsersController < ApplicationController

  get '/signup' do
    erb :'/users/new'
  end

  post '/signup' do
    user = User.create(params[:user])
    redirect to "/"
  end
end
