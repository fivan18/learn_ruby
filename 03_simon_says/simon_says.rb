#write your code here

def echo word
    word
end

def shout word
    word.upcase
end

def repeat word, times = 2
    str = "#{word} " * times
    str[0...-1]
end

def start_of_word word, length
    word[0...length]
end

def first_word sentence
    sentence.partition(" ")[0]
end


def titleize sentence
    little_words = ["the", "and", "over"]
    sentence = sentence.capitalize
    sentence.gsub(/\w+/) do |match|
        little_words.include?(match) ? match : match.capitalize
    end
end