require "sinatra"
require_relative("lib/calculator.rb")



calculator = Calculator.new


get "/" do 
erb :home
end

######################## ADD ########################
######################## ADD ########################
######################## ADD ########################

get "/add" do
  erb :add
end

post "/calculate_add" do
  @result = calculator.add(params[:first_number].to_f, params[:second_number].to_f).to_s
  erb :calculate_add

  # File.open("items.json","w") do |f|
  # f.write(items_array.to_json)
end
end

######################## SUBTRACT ########################
######################## SUBTRACT ########################
######################## SUBTRACT ########################
get "/subtract" do
  erb :subtract
end

post "/calculate_subtract" do
  @result = calculator.subtract(params[:first_number].to_f, params[:second_number].to_f)
  erb :calculate_subtract
end

######################## MULTIPLY ########################
######################## MULTIPLY ########################
######################## MULTIPLY ########################
get "/multiply" do
  erb :multiply
end

post "/calculate_multiply" do
  @result = calculator.multiply(params[:first_number].to_f, params[:second_number].to_f)
  erb :calculate_multiply
end

######################## DIVIDE ########################
######################## DIVIDE ########################
######################## DIVIDE ########################
get "/divide" do
  erb :divide
end

post "/calculate_divide" do
  @result = calculator.divide(params[:first_number].to_f, params[:second_number].to_f)
  erb :calculate_divide
end
