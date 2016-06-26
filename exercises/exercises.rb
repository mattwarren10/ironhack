
def store_reminder
	print "What would you like me to remind you to do? "
	reminder = gets.chomp
	reminders = Hash.new
	reminders[1] = reminder
	puts reminders
end

def store_another
	reminders.inspect
end

store_reminder()

print "Store another? (y/n) "
store_another_reminder = gets.chomp
if store_another_reminder == "y"
	store_reminder()
else
	
end
