class TeamsController < ApplicationController
  get '/account' do
    redirect_to_login
    @teams = Team.all
    erb :'/users/show'
  end

  get '/teams/new' do
    redirect_to_login
    erb :'teams/new'
  end

  post '/teams/new' do
    team = Team.new(params[:team])
    team.user_id = current_user.id
    team.save
    redirect :"/teams/#{team.id}"
  end

  get '/teams/:id' do
    @team = Team.find(params[:id])
    erb :'teams/show'
  end

  get '/teams/:id/edit' do

  end

end
