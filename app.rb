require 'rubygems'
require 'sinatra'

get '/' do
  @action = 'index'
  erb :index
end

get '/about' do
  @action = 'about'
  erb :about
end

get '/projects' do
  @action = 'projects'
  erb :projects
end

get '/code' do
  @action = 'code'
  erb :code
end

get '/contact' do
  @action = 'contact'
  erb :contact
end

get '/projects/polarity_shift' do
  @action = 'polarity_shift'
  erb :projects
end

get '/projects/the_depths' do
  @action = 'the_depths'
  erb :projects
end

get '/proejcts/peg_game' do
  @action = 'peg_game'
  erb :projects
end