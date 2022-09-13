def substrings(text, dict)
    substrings = Hash.new(0)
    new_text = text.split(" ")
    new_text.each do |word|
        dict.each do |d|
            if(word.downcase.include?(d))
                substrings[d] += 1  
            end
        end
    end
    p substrings
    p substrings.sort.to_h
end


dictionary = ["below","down","go","going","horn","how",
"howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
