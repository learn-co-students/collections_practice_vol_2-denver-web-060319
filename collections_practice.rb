## Time to get buckets is essentially what's being asked of me here.
## Write your own logic where necessary.
## All solutions should be generic and work for any case.
require 'pry'

def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

# returns all elements that contain the letter a...
# array manipulation.

def contain_a(array)
new_word_array = []
    array.each do |word|
      if word.include?("a") == true
        new_word_array << word
      end
    end
new_word_array
end

# return the first element that begins with teh letters "wa"

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
  array
end

#count how many times something appears in an array.
# given an array of three elements, where the elements are hashes.


def count_elements(array)

#The array we're going to add to...
simplified_array = array.uniq

# Now how to find out the count of each element of the simplified_array.
array_of_counts = []
simplified_array.each do |x|
  array_of_counts << array.count(x)
end

# index values of simplified and array_of_counts will be identical.
# use a loop to combine them.
array_of_counts

  i = 0
  while i < simplified_array.length
    simplified_array[i][:count] = array_of_counts[i]
    i += 1
  end

simplified_array
end

def merge_data(array_1, array_2)
new_hash = []
  array_1.each do |array_1_element|
    array_2.each do |array_2_element|
      array_2_element.each do |name, attribute_hash|
      new_hash << array_1_element.merge(attribute_hash).sort
    end
  end
end
value_1 = new_hash.first.to_h
value_2 = new_hash.last.to_h
final_hash = []
final_hash << value_1
final_hash << value_2
final_hash
end

def find_cool(cool)
  cool.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        return [hash]
    end
  end
end
end

def organize_schools(schools)
location_array = []
final_hash = {}
  schools.each do |a, b|
    b.each do |c, d|
      location_array << d
    end
  end
uniq_locations = location_array.uniq.sort

    i = 0
    while i < uniq_locations.length
      final_hash[uniq_locations[i]] = []
      i += 1
    end

  schools.each do |a, b|
    b.each do |location, location_name|
      final_hash[location_name] << a
    end
  end
final_hash
end
#binding.pry
