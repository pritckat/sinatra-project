class TeamsController < ApplicationController
  get '/account' do
    @teams = Team.all
    erb :'/teams/show'
  end
end
