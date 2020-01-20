# def translate (target)
#     / multiple words /
#     if(target.include?(" "))
#         words = target.split.map do |word|
#             / If the word starts with a vowel end with ay/
#             if(word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u')
#                 word += "ay"
#             else
#             / If the word starts with a consonant, move to end/
#                 while(word[0] != 'a' && word[0] != 'e' &&  word[0] && 'i' && word[0] != 'o' && word[0] != 'u')
#                     word = word.slice(1,word.length-1) + word.slice(0)
#                 end
#                 word = word + "ay"
#             end
#         end
#         words.join(" ")
#     else
#         /single word/
#         if(target[0] == 'a' || target[0] == 'e' || target[0] == 'i' || target[0] == 'o' || target[0] == 'u')
#             target += "ay"
#         else
#         / If the word starts with a consonant, move to end/
#             while(target[0] != 'a' && target[0] != 'e' &&  target[0] && 'i' && target[0] != 'o' && target[0] != 'u')
#                 target = target.slice(1,target.length-1) + target.slice(0)
#             end
#             target = target + "ay"
#         end
#     end
# end
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