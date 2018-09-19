class TeamsController < ApplicationController
  get '/account' do
    redirect_to_login
    @teams = Team.all
    erb :'/teams/show'
  end

  get '/teams/new' do
    redirect_to_login
    erb :'teams/new'
  end
end
