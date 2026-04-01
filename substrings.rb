def substrings(string, dictionary)
  # for each in dictionary:
  # check if string matches current dictionary item
  # increment counter

  counts = dictionary.reduce(Hash.new(0)) do |hash, entry|
    if string.include?(entry)
      scanned = string.scan(entry)
      hash[entry] = scanned.length
    end
    hash
  end

  counts
end

# test case
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)