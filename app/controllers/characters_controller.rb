class CharactersController < ApplicationController

  get '/characters/new' do
    erb :'/characters/new'
  end

  post '/characters/new' do
    @char = Character.create(params[:character])
    redirect to '/account'
  end

  get '/characters/:id' do
    @char = Character.find_by_id(params[:id])
    erb :"/characters/show"
  end

  get '/characters/:id/edit' do
    @char = Character.find_by_id(params[:id])
    erb :'/characters/edit'
  end

  patch '/characters/:id' do
    @char = Character.find_by_id(params[:id])
    @char.name = params[:character][:name]
    @char.role = params[:character][:role]
    @char.save
    redirect to "/account"
  end
end
