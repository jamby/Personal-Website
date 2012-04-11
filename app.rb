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
  erb :code
end

get '/contact' do
  erb :contact
end