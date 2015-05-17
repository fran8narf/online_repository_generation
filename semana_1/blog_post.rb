class Blog
	def initialize 
		#Inicializar array que almacenará los posts.
	@@my_posts = []
	end

end

class Post < Blog #heredamos de la clase Blog para poder utilizar el array my_posts
	attr_accessor :title, :text, :date
	def initialize title, text, date
		@title = title
		@text = "***************\n"+text+"\n---------------"
		#@date = Time.now 
		@date = "Posted: "+date+"\n---------------"
	end

	def add_post
		@@my_posts.push @title, @text, @date
	end

	def add_sponsored
		@title = "+++++"+title+"+++++"
		@@my_posts.push @title, @text, @date
	end

	def publish_front_page
	
			puts @@my_posts[0..11]
			
	end

	#no lo ordena, solo le da la vuelta
	def show_ordered_posts
		puts @@my_posts.reverse
	end 

end


blog = Blog.new

post1 = Post.new "Post title #1","Texto del primer post de prueba.","12/04/2015"
post1.add_sponsored

post2 = Post.new "Post title #2","Texto del segundo post de prueba.","12/04/2015"
post2.add_post

post3 = Post.new "Post title #3","Texto del tercer post de prueba.","12/04/2015"
post3.add_post

post4 = Post.new "Post title #4","Texto del cuarto post de prueba.","12/04/2015"
post4.add_post

post5 = Post.new "Post title #5","Texto del quinto post de prueba.","12/04/2015"
post5.add_post

post6 = Post.new "Post title #6","Texto del sexto post de prueba.","12/04/2015"
post6.add_post

post7 = Post.new "Post title #7","Texto del séptimo post de prueba.","12/04/2015"
post7.add_post

post7.publish_front_page