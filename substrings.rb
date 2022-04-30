dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, array)
    results = Hash.new(0)
    splitArr = string.downcase.split(' ')
    
    x = splitArr.each do |word|
        y = array.reduce(results) do |k, v|
            if word.include?(v)
                results[v] += 1
            end
        end
    end
    p results
end

result = substrings("Howdy partner, sit down! How's it going?", dictionary)
