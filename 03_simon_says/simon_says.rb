def echo(target)
    target
end

def shout(target)
    target.upcase
end

def repeat(target,n=2)
    says = (target + " ") * n
    says_trim = says[0..-2]
end

def start_of_word(target,n)
    index = n -1
    target[0..index]
end

def first_word(target)
    space_index = target.index(" ")
    target[0..space_index-1]
end

def titleize(target)
    words = target.split.map do |word|
        / can use %w(the and over) to shorthand the if notation
        /
        if ['the', 'and', 'over'].include?(word)
            word
        else
            word.capitalize
        end
    end
    words[0].capitalize!
    words.join(" ")
end
