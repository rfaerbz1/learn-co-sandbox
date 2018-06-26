require 'bundler'
Bundler.require
require_relative 'model.rb' # get information from model.rb file

class MyApp < Sinatra::Base 
  
  get '/' do 
    return erb :index
  end
  
  post '/' do 
    Results = Animals.new(params)
    @answer = Results.result
    return erb :results
  end 
  
end 