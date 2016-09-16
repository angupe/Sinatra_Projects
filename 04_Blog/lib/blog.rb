# allows you to access the list of posts

class Blog

    attr_reader :posts

    def initialize
        @posts = []
    end

    def add_post(post)
        @posts << post
    end

    def latest_posts
        @posts = @posts.sort_by { |post| post.date }
        @posts.reverse
    end

    # def publish_front_page
    #     @posts.each do |post|
    #         if post.sponsored
    #         puts "******************Post #{post.title}******************"
    #         puts "******************************************************"
    #         puts "Post #{post.text}"
    #         puts "------------------------------------------------------"

    #         else
    #         puts "Post #{post.title}"
    #         puts "******************"
    #         puts "Post #{post.text}"
    #         puts "------------------"
    #         end
    #     end
    # end

    # def posts
    #     devuelve una array que contiene Post instances
    #     itero sobre ella desde views para mostrar el titulo y la fecha de cada post
    # end

end

