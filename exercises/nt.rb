
new_testament = {}
new_testament["ROM"] = "Romans"
new_testament["1COR"] = "1 Corinthians"
new_testament["2COR"] = "2 Corinthians"
new_testament["GAL"] = "Galations"
new_testament["EPH"] = "Ephesians"
new_testament["PHIL"] = "Philippians"
new_testament["COL"] = "Colosians"

new_testament.each do | k , v |
	puts "#{k} = #{v}"
end


puts "Choose one of Paul's epistles."
choice = gets.chomp.downcase

if choice.length == 3 || choice.length == 4
	epistle = choice.upcase
elsif choice.length > 4
	epistle = choice.capitalize
end
	

if new_testament.has_key? epistle
	puts new_testament.select { | k , v | k == epistle }
elsif new_testament.has_value? epistle
	puts new_testament.select { | k , v | v == epistle }
else 
	puts "Your choice did not yield any results."
end
