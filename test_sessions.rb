require 'rubygems'
require 'sinatra'

enable :sessions

get '/' do
  session["user"] ||= nil
  erb :index
end

get '/introduction' do
  erb :introduction
end

post '/introduction' do
  session["user"] = params[:name]
  redirect '/'
end

get '/bye' do
  session["user"] = nil
  erb :bye
end
