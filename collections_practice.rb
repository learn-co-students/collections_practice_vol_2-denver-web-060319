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
    data.map do |hash_in_data|
        hash_in_data.each do |string, attributes|
            keys.each do |hashes_in_keys|
                if string == hashes_in_keys[:first_name]
                    hash_in_data[string][:motto] = hashes_in_keys[:motto]
                    hash_in_data[string][:first_name] = hashes_in_keys[:first_name]
                end
            end
        end.values
    end.flatten
end

def find_cool cool 
    cool.select do |hash|
        hash[:temperature] == "cool"
    end
end 

def organize_schools schools 
    binding.pry
    schools.map do |school, location| 
        location
    end.inject(:merge)

end
# {"Chicago"=>["dev boot camp chicago"], 
# "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], 
# "SF"=>["dev boot camp", "Hack Reactor"]}

# {"flatiron school bk"=>{:location=>"NYC"},
#  "flatiron school"=>{:location=>"NYC"},
#  "dev boot camp"=>{:location=>"SF"},
#  "dev boot camp chicago"=>{:location=>"Chicago"},
#  "general assembly"=>{:location=>"NYC"},
#  "Hack Reactor"=>{:location=>"SF"}}

# hash.each_with_object({}) do |(k, v), a|
#     a[k] = v + 3
#    end 