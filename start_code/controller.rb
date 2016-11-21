require('sinatra')
require('sinatra/contrib/all')
require_relative('models/calculator')
require('json')

get '/' do
  @result = "Welcome to my world of calculators! And cats."
  erb(:home)
end

get '/cat' do
  @cat = "Dibbles the Magnificent"
  erb(:cat)
end

get '/add/:num1/:num2' do
  @result = Calculator.add(params[:num1].to_i, params[:num2].to_i).to_s
  erb(:result)
end

get '/subtract/:num1/:num2' do
  @result = Calculator.subtract(params[:num1].to_i, params[:num2].to_i).to_s
  erb(:result)
end

get '/multiply/:num1/:num2' do
  @result = Calculator.multiply(params[:num1].to_i, params[:num2].to_i).to_s
  erb(:result)
end

get '/divide/:num1/:num2' do
  @result = Calculator.divide(params[:num1].to_i, params[:num2].to_i).to_s
  erb(:result)
end

get '/all/:num1/:num2' do
  n1 = params[:num1].to_i
  n2 = params[:num2].to_i
  @result = Calculator.all(n1, n2)
  erb(:result)
end

