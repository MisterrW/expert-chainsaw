require('sinatra')
require('sinatra/contrib/all')
require_relative('models/calculator')
require('json')

get '/' do
  return "Welcome to my world of calculators!"
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
  n1 = params[:number1].to_i
  n2 = params[:number2].to_i
  results = {
    add: Calculator.add(n1, n2).to_s,
    sub: Calculator.subtract(n1, n2).to_s,
    mult: Calculator.multiply(n1, n2).to_s,
    div: Calculator.divide(n1, n2).to_s
  }
  return json(results)
end

