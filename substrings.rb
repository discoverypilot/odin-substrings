def substrings(string, dictionary)
  # for each in dictionary:
  # check if string matches current dictionary item
  # increment counter

  dictionary.reduce(Hash.new(0)) do |hash, entry|
    if string.downcase.include?(entry.downcase)
      scanned = string.downcase.scan(entry.downcase)
      hash[entry] = scanned.length
    end
    hash
  end
end

# test case
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)