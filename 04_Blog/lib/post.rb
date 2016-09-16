#only to store and retrieve posts with title, date and text
class Post

    attr_reader :title, :date, :text, :sponsored

    def initialize (title, date, text, sponsored = false)
        @title = title
        @date = date
        @text = text
        @sponsored = sponsored
    end


    # def title
    #     @title = title

    # end


    # def date

    # end


    # def text

    # end



end
