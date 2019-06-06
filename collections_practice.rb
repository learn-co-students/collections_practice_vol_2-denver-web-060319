# your code goes here
require "pry"
def begins_with_r array
    array.each do |word| 
        if !(word.chars.first.downcase == "r")
            return false
        end
    end
    true
end 

def contain_a array
    array.select do |word|
        word.include?('a')
    end
end

def first_wa array
    array.each do |word|
     return word if word[0..1] == "wa" 
    end
end
def remove_non_strings array
    array.select do |word|
        word.class == String 
    end
end    

def count_elements array
    # iterate through the array and look at each hash
    # count the number of times a name occurs and return the it in an array in the 
    # following way [{:name => "patrick", :count => 1}]
    # loop through each elelement in the array
    #   if name does not exist in the array store the name and make a hash mark(to count the instance of the name)
    #   lets say the name already exists then just and one to the count key
    count_array = []
    storage_hash = Hash.new(0)
    storage_hash2 = Hash.new
    array.each do |hash|
        storage_hash[hash] += 1
    end
    storage_hash
    storage_hash.each do |k, v|
        storage_hash2 = k
        storage_hash2[:count] = v
        count_array << storage_hash2
    end
    count_array
end

def merge_data keys, data 
    binding.pry
    keys 
    data
end