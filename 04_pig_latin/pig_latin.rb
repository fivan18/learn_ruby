#write your code here

def applyPigLatin(str)
    regxConsonant = /^[b-df-hj-np-tv-z]+/
    regxQu = /^[b-df-hj-np-tv-z]*qu/
    str.match?(regxConsonant) ? 
        str.match?(regxQu) ?
            str.sub(regxQu, "") + str.match(regxQu)[0] + "ay" :
            str.sub(regxConsonant, "") + str.match(regxConsonant)[0] + "ay" : 
        str + "ay" 
end


def translate sentence
    (sentence.split(" ").map do |str|
        regxPunc = /\p{P}$/
        returnedStr = ""
        if str.match?(regxPunc)
            returnedStr = str.capitalize! == nil ?
                applyPigLatin(str.downcase.sub(regxPunc, "")).capitalize + str.match(regxPunc)[0] :
                applyPigLatin(str.downcase.sub(regxPunc, "")) + str.match(regxPunc)[0] 
        else
            returnedStr = str.capitalize! == nil ? 
                applyPigLatin(str.downcase).capitalize : 
                applyPigLatin(str.downcase)         
        end
        returnedStr
    end).join(" ")
end
