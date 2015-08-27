# Post
class Post
  attr_reader :author, :title, :body, :comments

  def initialize(options)
    @author   = options[:author]
    @title    = options[:title]
    @body     = options[:body]
    @comments = options[:comments] || []
  end

  def insert_comment(*comments)
    comments.each do |c|
      @comments << c
    end
  end
end

# Comments
class Comments
  attr_reader :user, :body

  def initialize(options)
    @user = options[:user]
    @body = options[:body]
  end
end

post = Post.new author: 'Terry',
                title: 'Test',
                body: 'LaLaLA'

post.insert_comment Comments.new(user: 'test 1',
                                 body: 'body 2')

p post.inspect
