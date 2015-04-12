class App

	attr_accessor :app_name, :author, :os, :note

	def initialize app_name, author, os, note

		@app_name = app_name
		@author = author
		@os = os
		@note = note
	end

	
	def description
		#return "The APP: #{app_name} created by #{author} for #{os} has got #{note} points!"
		#return no lo muestra
		puts "The APP: #{app_name}\ncreated by #{author} for #{os} \nhas got #{note} points!"
	end

	def notesmessage

		if (note >= 0 && note <= 4)
			puts "Poor"
		elsif (note >= 5 && note <= 6)
			puts "Good"
		elsif (note >= 7 && note <= 9)
			puts "Very cool!"
		else
			puts "Awesome!!!"
		end

 	end
	
end

new_app = App.new "One Piece Tresaure Cruise","Namco Bandai Entertainment","iOS",10
new_app.description
new_app.notesmessage

another_app = App.new "Clash Of Clans", "SuperCell", "iOS/Android", 8
another_app.description
another_app.notesmessage



