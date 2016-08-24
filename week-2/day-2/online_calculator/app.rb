require "sinatra"
require_relative("lib/calculator.rb")



calculator = Calculator.new


get "/" do 
erb :home
end

post "/calculate" do

  if params[:operation] == "add"
	  @result = calculator.add(params[:first_number].to_f, params[:second_number].to_f).to_s
  elsif params[:operation] == "subtract"
  	  @result = calculator.subtract(params[:first_number].to_f, params[:second_number].to_f).to_s		
  elsif params[:operation] == "multiply"
  	  @result = calculator.multiply(params[:first_number].to_f, params[:second_number].to_f).to_s	 	  
  elsif params[:operation] == "divide"
  	  @result = calculator.divide(params[:first_number].to_f, params[:second_number].to_f).to_s
  erb :calculate

  # File.open("items.json","w") do |f|
  # f.write(items_array.to_json)
end
end

