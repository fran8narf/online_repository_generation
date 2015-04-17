class App

	attr_accessor :app_name, :author, :os, :score

	def initialize app_name, author, os, score

		@app_name = app_name
		@author = author
		@os = os
		@score = score
	end

	
	def description
		#return "The APP: #{app_name} created by #{author} for #{os} has got #{score} points!"
		#return no lo muestra
		puts "The APP: #{app_name}\ncreated by #{author} for #{os} \nhas got #{score} points!"
	end

	def notesmessage

		if (score >= 0 && score <= 4)
			puts "Poor"
		elsif (score >= 5 && score <= 6)
			puts "Good"
		elsif (score >= 7 && score <= 9)
			puts "Very cool!"
		else
			puts "Awesome!!!"
		end
 	end
	
	def compare app_one, app_two
		if app_one.score > app_two.score
			puts "The App '#{app_one.app_name}' has the higher score!!(#{app_one.score})"
		else
			puts "The App '#{app_two.app_name}' has the higher score!!(#{app_two.score})"
		end
	end
end

new_app = App.new "One Piece Tresaure Cruise","Namco Bandai Entertainment","iOS",10
new_app.description
new_app.notesmessage


another_app = App.new "Clash Of Clans", "SuperCell", "iOS/Android", 8
another_app.description
another_app.notesmessage

new_app.compare new_app, another_app


