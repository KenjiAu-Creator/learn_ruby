def translateword(target)
    if(target[0] == 'a' || target[0] == 'e' || target[0] == 'i' || target[0] == 'o' || target[0] == 'u')
        target += "ay"
    elsif(target[0..1] == "qu")
        target = target.slice(2,target.length-1) + target.slice(0,2) + "ay"
    else
     / If the word starts with a consonant, move to end/
        while(target[0] != 'a' && target[0] != 'e' &&  target[0] != 'i' && target[0] != 'o' && target[0] != 'u')
            if(target[0..1] == "qu")
                target = target.slice(2,target.length-1) + target.slice(0,2)
            else
                target = target.slice(1,target.length-1) + target.slice(0)
            end
        end
    target = target + "ay"
    end
end

def translate(phrase)
    words = phrase.split.map do |word|
        word = translateword(word)
    end
    return words.join(" ")
end