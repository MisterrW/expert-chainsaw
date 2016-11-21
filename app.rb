require('sinatra')
require('sinatra/contrib/all')

get '/' do
  return 1/0
end


get '/phil/hi' do
  return "Howdy, Phil"
end

get '/name/:title' do
  end

get '/will/:title/:first/:last' do
  return "Hello, #{params[:title].capitalize} #{params[:first].capitalize} #{params[:last].capitalize}"
end

get '/valerie' do
end

get '/square/:number' do
  return "Your number is #{params[:number]}. Its square is " + (params[:number].to_i * params[:number].to_i).to_s + "."
end

get '/multiply/:number1/:number2' do
  return "Your numbers are #{params[:number1]} and #{params[:number2]}. Multiplied together they make " + (params[:number1].to_i * params[:number2].to_i).to_s + "."
end

get '/add/:number1/:number2' do
    return "Your numbers are #{params[:number1]} and #{params[:number2]}. Added together they make " + (params[:number1].to_i + params[:number2].to_i).to_s + "."
  end