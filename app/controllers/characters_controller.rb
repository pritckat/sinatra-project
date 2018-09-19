class CharactersController < ApplicationController

  get '/characters/new' do
    erb :'/characters/new'
  end

  post '/characters/new' do
    @char = Character.create(params[:character])
    redirect to '/account'
  end

  get '/character/:id' do
    @char = Characters
  end
end
