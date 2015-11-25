require 'rubygems' 
require 'twilio-ruby' 

class Text 

	def initialize
		account_sid =  
		auth_token =  
		@client = Twilio::REST::Client.new account_sid, auth_token 
	end

	def message
		@client.messages.create(
		  to: "+447966793842",
		  from: "+44 1163470640",
		  body: "Thank you! Your order was placed and will be delivered within an hour."
		)
	end
end
