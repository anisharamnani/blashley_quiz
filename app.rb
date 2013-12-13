require 'bundler'
Bundler.require

class FormParty < Sinatra::Application

  get '/' do
    erb :blash
  end

  post '/blash_quiz' do
    result = params.values.map{|value| value.to_i}.reduce(:+)
    if result > 12
    	@result = "blake"
    elsif result < 6
    	@result ="ashley"
    else 
    	@result ="blashley"
    end 
    erb :blash_quiz
  end
end 