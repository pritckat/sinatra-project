class TeamsController < ApplicationController

  get '/teams/new' do
    redirect_to_login
    erb :'teams/new'
  end

  post '/teams/new' do
    team = Team.new(params[:team])
    team.user = current_user
    team.save
    if six_characters?
      redirect to "/teams/#{team.id}"
    else
      redirect :"/teams/#{team.id}/edit"
    end
  end

  get '/teams/:id' do
    @team = Team.find(params[:id])
    erb :'teams/show'
  end

  get '/teams/:id/edit' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    erb :'/teams/edit'
  end

  patch '/teams/:id' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    @team.update(params[:team])
    @team.save
    if six_characters?
      redirect to "/teams/#{@team.id}"
    else
      redirect to "/teams/#{@team.id}/edit"
    end
  end

  get '/teams/:id/delete' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    erb :'/teams/delete'
  end

  delete '/teams/:id/delete' do
    @team = Team.find_by_id(params[:id])
    @team.delete
    redirect to "/account"
  end

  helpers do
    def six_characters?
      params[:team][:character_ids].size == 6
    end

  end
end
