require 'rubygems'
require 'sinatra'
require 'pony'

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

get '/projects/peg_game' do
  @action = 'peg_game'
  erb :projects
end

get '/projects/polarity_shift' do
  @action = 'polarity_shift'
  erb :projects
end

get '/projects/the_depths' do
  @action = 'the_depths'
  erb :projects
end

get '/projects/8bitironman' do
  @action = '8bitironman'
  erb :projects
end

get '/code/peggame_update' do
  @action = 'peggame_update'
  erb :code
end

get '/code/polarityshift_animload' do
  @action = 'polarityshift_animload'
  erb :code
end

get '/code/polarityshift_animupdate' do
  @action = 'polarityshift_animupdate'
  erb :code
end

get '/code/depths_importer' do
  @action = 'depths_importer'
  erb :code
end

get '/code/depths_levelsystemload' do
  @action = 'depths_levelsystemload'
  erb :code
end

post 'email_me' do
  Pony.mail(:to => 'irjamby@gmail.com', :from => params[:email], :subject => "Email from #{params[:name]}", :body => params[:body])
end