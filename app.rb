require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @reversed_name = params[:name].reverse 
    "#{@reversed_name}" 
  end
  
  get '/square/:number' do 
    @result = params[:number].to_i * params[:number].to_i
    "#{@result}".to_s 
  end
  
  get '/say/:number/:phrase' do    
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end 
    result
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

    # array = []

    # array << params[:word1] 
    # array << params[:word2]
    # array << params[:word3]
    # array << params[:word4]
    # array << params[:word5]
     
    # array.join(" ") << "."

  end 

  get '/:operation/:number1/:number2' do 
    #binding.pry 
    if params[:operation] == "add"
      add_result = params[:number1].to_i + params[:number2].to_i 
      add_result.to_s
      #binding.pry 

    elsif params[:operation] == "subtract"
      subtract_result = params[:number1].to_i - params[:number2].to_i
      subtract_result.to_s

    elsif params[:operation] == "multiply"
      multiply_result = params[:number1].to_i * params[:number2].to_i
      multiply_result.to_s

    elsif params[:operation] == "divide"
      divide_result = params[:number1].to_i / params[:number2].to_i
      divide_result.to_s 
      #binding.pry  
    end 
  end 

end



