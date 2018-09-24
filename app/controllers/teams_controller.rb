class TeamsController < ApplicationController

  get '/teams' do
    @teams = Team.all
    erb :'/teams/all'
  end

  get '/teams/new' do
    redirect_to_login
    erb :'teams/new'
  end

  post '/teams/new' do
    @error=params[:error]
    @team = Team.new(params[:team])
    @team.user = current_user
    @team.save
    if six_characters?
      redirect to "/teams/#{@team.id}"
    else
      redirect :"/teams/#{@team.id}/edit"
    end
  end

  get '/teams/:id' do
    @error = params[:error]
    @team = Team.find(params[:id])
    erb :'teams/show'
  end

  get '/teams/:id/edit' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    redirect_if_not_team_owner
    erb :'/teams/edit'
  end

  patch '/teams/:id' do
    redirect_to_login
    @team = Team.find_by_id(params[:id])
    redirect_if_not_team_owner
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
    redirect_if_not_team_owner
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

    def redirect_if_not_team_owner
      @team = Team.find_by_id(params[:id])
      if @team.user != current_user
        redirect to "/teams/#{@team.id}?error=You are not the owner of this team."
      end
    end

  end
end
