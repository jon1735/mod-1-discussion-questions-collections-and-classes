# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


class User 
  attr_accessor :name, :photo, :comment
  
  @@all = [] 

  def initialize(name, photo, comment)
    @name = name
    @photo = photo
    @comment = comment
    @@all << self
  end

  def self.photos
    photo.all
  end

  def self.all
    @@all
  end
end

class Photo
  attr_accessor :user, :photo, :comment

  @@all = []

  def initialize
    @user = user
    @photo = photo
    @comment = comment
    @@all << self
  end

  def comments
    Comment.all
  end

  def make_comment(new_comment) 
    Comment.new(new_comment)
  end
end

class Comment
  attr_accessor :comment

  @@all = []

  def initialize
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]

