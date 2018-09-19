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
    @team = Team.find_by_id(params[:id])
    erb :'/teams/edit'
  end

  patch '/teams/:id' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    @team.name = params[:team][:name]
    @team.notes = params[:team][:notes]
    @team.save
    redirect to "/teams/#{@team.id}"
  end

end
