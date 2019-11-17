class Book
    def initialize(title = "No Title")
        @title = title
    end
    
    def title
        @title
    end
    
    def title=(title)
        noCapitalize  = [
            "the", "a", "an",                                       #articles
            "for", "and", "nor", "but", "or", "yet", "so", "of",    #conjunctions
            "in", "on", "after", "before"                           #propositions
            ]

        @title = (title.split(" ").collect { |word|
            noCapitalize.include?(word) ?
            word :
            word.capitalize 
        }).join(" ")

        @title = @title[0...1].capitalize  + @title[1, @title.length]
    end
end


book = Book.new
book.title = "a title"
puts book.title