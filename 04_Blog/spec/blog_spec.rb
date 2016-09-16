require "rspec"

require "./lib/blog.rb"
require "./lib/post.rb"

RSpec.describe "Posts checker" do

    before :each do

        $blog = Blog.new
        $blog.add_post Post.new("Enero", 20160109, "example text number 1111")

    end


    it "method returns an array of the posts added" do
        expect($blog.posts).not_to be_empty
    end

    it "array sorted by date" do
        expect($blog.latest_posts).to eq(@posts)
    end




end
