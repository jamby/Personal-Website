require 'rubygems'
require 'sinatra'
require 'pony'
require 'yaml'
yaml_file = YAML.load_file("./config/config.yml")["mailer"]

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

post '/contact' do
  #puts yaml_file["username"]
  #puts params.inspect
  #puts params[:email]
  #puts params[:first_name]
  #puts params[:last_name]
  Pony.mail(:to => 'irjamby@gmail.com', 
    :from => "#{params[:first_name]} #{params[:last_name]} <#{params[:email]}>", 
    :subject => "Email from #{params[:first_name]} #{params[:last_name]} (#{params[:email]})", 
    :body => params[:comments],
    :port => '587',
    :via => :smtp,
    :via_options => {
      :address => "smtp.sendgrid.com",
      :port => '587',
      :enable_starttls_auto => true,
      :user_name => ENV['SENDGRID_USERNAME'],
      :password => ENV['SENDGRID_PASSWORD'],
      :authentication => :plain,
      :domain => ENV['SENDGRID_DOMAIN']
    }
  )
  #puts "Email from " + "#{params[:first_name]} #{params[:last_name]}"
  @action = 'contact'
  @alert = "I have been notified. Thank you."
  erb :contact
end