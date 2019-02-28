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
    return string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    if @operation == "add"
       sum(num1, num2)
    elsif @operation == "subtract"
      @symb += "-"
    elsif @operation == "multiply"
      @symb += "*"
    elsif @operation == "divide"
      @symb += "/"
    end


  binding.pry
    result = "#{num1 + @symb + num2}"



    result
  end
  end
