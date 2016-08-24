require "sinatra"
require_relative("lib/calculator.rb")



calculator = Calculator.new


get "/" do 
erb :home
end

post "/calculate" do
  x = params[:first_number].to_f
  y = params[:second_number].to_f

  if params[:operation] == "add"
	  @result = calculator.add(x, y).to_s
  elsif params[:operation] == "subtract"
  	  @result = calculator.subtract(x, y).to_s		
  elsif params[:operation] == "multiply"
  	  @result = calculator.multiply(x, y).to_s	 	  
  elsif params[:operation] == "divide"
  	  @result = calculator.divide(x, y).to_s
  end

  erb :calculate

  # File.open("items.json","w") do |f|
  # f.write(items_array.to_json)

end

