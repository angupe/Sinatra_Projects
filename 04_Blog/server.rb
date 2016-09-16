require "sinatra"
require "sinatra/reloader"

require "./lib/blog.rb"
require "./lib/post.rb"

require "pry"

$blog = Blog.new

$blog.add_post Post.new("Marzo", 20160309, "example text number 3333")
$blog.add_post Post.new("Enero", 20160109, "example text number 1111")
$blog.add_post Post.new("Febrero", 20160209, "example text number 2222")
$blog.add_post Post.new("Mayo", 20160509, "example text number 5555", true)
$blog.add_post Post.new("Abril", 20160409, "example text number 4444")



# @@blog = Blog.new
# @@blog.add_post Post.new("Enero", 20160109, "example text number 1111")
# @@blog.add_post Post.new("Febrero", 20160209, "example text number 2222")
# @@blog.add_post Post.new("Marzo", 20160309, "example text number 3333")
# @@blog.add_post Post.new("Abril", 20160409, "example text number 4444")
# @@blog.add_post Post.new("Mayo", 20160509, "example text number 5555", true)


# blog.publish_front_page

# blog.sorting
# blog.publish_front_page


get "/" do
    @stored = $blog.latest_posts
    erb :latest_posts
end



# get "/post_details/:index" do
#   @index = params[:index].to_i
#   @posts = blog.latest_posts

#   erb(:post_details)
# end

# get "/new_post" do
#   erb(:new_post)
# end

# post "/check_new_post" do
#   title_received = params[:title]
#   content_received = params[:content]
#   date_created = Time.now

#   post_new = Post.new(title_received, date_created, content_received)
#   blog.add_post(post_new)

#   redirect "/"
# end



