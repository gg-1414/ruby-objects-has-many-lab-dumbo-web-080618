require_relative 'author.rb'
require_relative 'post.rb'

require 'pry'


how_this_works = Post.new("How This Works")
my_thoughts = Post.new("My Thoughts")
food_i_like = Post.new("Food I Like")

gina = Author.new("Gina")
potatoes = gina.add_post_by_title("Potatoes")
gina.add_post_by_title("Banana")
gina.add_post_by_title("Apple")

brandon = Author.new("Brandon")

carrots = brandon.add_post_by_title("Carrots")
brandon.add_post_by_title("Celery")
brandon.add_post_by_title("Squash")
# binding.pry

# puts Author.find_post(brandon).author.name
binding.pry

puts carrots.author_name
