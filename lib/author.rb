require 'pry'

class Author

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def posts
    @@all
  end

  def add_post(post)
    post.author = self
    @@all << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @@all << post
    post
  end

  def self.post_count
    @@all.size
  end

  def self.find_post(specific_post) # instance arg
    found_post = @@all.find {|post| post.author == specific_post}
    # returns the first instance that comes true
  end

end
