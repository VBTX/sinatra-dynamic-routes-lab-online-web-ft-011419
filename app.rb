require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number*@number).to_s

  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    time_num = @number.to_i
    string = ""
    time_num.times do
      string += @phrase
    end


  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do
  end
  end
