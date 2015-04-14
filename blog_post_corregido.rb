class Post
	attr_accessor :title, :date, :text 
	def initialize title, date, text #constructor con 3 atributos
		@title = title
		@date = date
		@text = text
	end
end

class Blog
	attr_accessor :posts
	def initialize #constructor sin parámetro de entrada (array vacio)
		@posts = []
	end

	def add_post post #al poner la variable se puede utilizar para meter los objetos creados
		@posts << post # << = push
	end

	def create_front_page #
		front_page = ""

		sort_posts

		@posts.each do|post| #recorre el array posts uno a uno
			front_page << post.title
			front_page << decorate_post_head
			front_page << post.text
			front_page << decorate_post_body 
		end

		front_page
	end

	def sort_posts
		#ordena los posts
		#
		@posts.sort!{|a,b| b.date <=> a.date}
	end

	def show_front_page 
		system("clear") #limpia la consola
		#show = create_front_page
		#puts show 
		puts create_front_page #muestra por pantalla el método create_front_page


	end

	def decorate_post_head
		"\n******************\n"
	end

	def decorate_post_body
		"\n==================\n\n"
	end
end

blog = Blog.new #Crea el array posts[] vacio

#creamos 3 objetos de la clase posts.
post1 = Post.new( "Nuevo post", Time.now, "Va a ser el mejor blog del mundo" )
post2 = Post.new( "¡¡Bienvenidos!!", (Time.now) -1000, "Presentando el blog!" ) #time.now-1000[segundos]
post3 = Post.new( "Despedida", Time.now, "Ni una sola visita :(" )

#Añadimos los post al array de la clase Blog (posts[])
blog.add_post post1
blog.add_post post2
blog.add_post post3

blog.show_front_page
