# your code goes here
require "pry"

def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.detect do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  counts = []
  array.each do |element|
    element.store(:count, 1)
    if counts.include?(element)
      counts[counts.index(element)][:count] += 1
    else
      counts << element
    end
  end
  counts
end

#keys and data are symbols that each point to their own
#array of two hashes that each contain key=>value pairs
def merge_data(keys, data)
  merged_hashes = []
  keys.each do |hash|
    data[0].each do |hash_key, values|
      #binding.pry
      if hash[:first_name] == hash_key
        merged_hashes << hash.merge(values)
      end
    end
  end
  merged_hashes
end

def find_cool(array_of_hashes)
  array_of_hashes.select do |hash|
    if hash.has_value?("cool")
      hash
    end
  end
end

def organize_schools(hashed_hashes)
  school_locations = {}
  hashed_hashes.select do |key, value|
    unless school_locations.keys.include?(value[:location])
      school_locations.store(value[:location], [])
    end
  end
  hashed_hashes.select do |key, value|
    school_locations.select do |hkey, hvalue|
      if value[:location] == hkey
        school_locations[hkey].push(key)
      end
    end
  end
  school_locations
end
