#app.rb
require "sinatra"
require "artii"


get "/" do

end



get "/ascii/:word" do

word_string = params[:word]


the_ascifier = Artii::Base.new(:font => "doh")
@new_word = the_ascifier.asciify(word_string)

erb :ascii
end
