class PasswordChecker
  def check_password(email, password)
   	 if password.length.to_i < 7
   	 	false
     elsif password.match(/[^a-zA-Z]/)
   	 	false	
   	 elsif password.include?(email.split(/\W/)[0])
   	 	false
   	 elsif	password.include?(email.split(/\W/)[1])
   	 	false
   	 else
   	 	true
   	 end

   	end
end