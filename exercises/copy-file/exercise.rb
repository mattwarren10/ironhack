#ASK FOR SOURCE FILE
puts "What is the source file?"

#GRAB USER SOURCE FILE FROM INPUT
source_file = gets.chomp

#ASK FOR DESTINATION FILE
puts "What is the desination file?"

#GRAB USER SOURCE FILE FROM INPUT
dest_file = gets.chomp

#STORE CONTENTS OF USER'S CHOSEN SOURCE FILE
source_file_contents = IO.read(source_file)

#WRITE SOURCE FILE TO NEW DESTINATION FILE
IO.write(dest_file, source_file_contents)