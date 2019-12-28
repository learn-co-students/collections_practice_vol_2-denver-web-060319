require 'pry'
# your code goes here
def begins_with_r(arr)
	arr.each do |word|
		ltr = word[0,1].upcase
		if(ltr != "R")
			return false
		end
	end
	true
end

def contain_a(arr)
	arr.select do |word|
		word.include?("a")
	end
end

def first_wa(arr)
	arr.each do |word|
		ltrs = word[0,2].upcase
		if (ltrs == "WA")
			return word
		end
	end
end

def remove_non_strings(arr)
	arr.select do |ltr|
		ltr.is_a?(String)
	end
end

def count_elements(arr)
	temp = []
	arr.each do |item1|
		found = false
		temp.each do |item2|
			if(item2[:name]==item1[:name])				
				found = true
				item2[:count] += 1
			end
		end
		if(!found) 
			item1[:count] = 1
			temp << item1
		end
	end
	temp
end

def merge_data(keys, data)
	temp = []
	keys.each do |key|
		first_name = key[:first_name]
		data.each do |item|
			item.each do |first, attr|
				if(first == first_name)
					key[:awesomeness] = attr[:awesomeness]
					key[:height] = attr[:height]
					key[:last_name] = attr[:last_name]
					temp << key
				end
			end
		end
	end
	temp
end



def find_cool(cool)
	temp = []
		cool.each do |item|
			if(item[:temperature] == "cool")
				temp << item
			end
		end
	temp
end



def organize_schools(schools)
	temp = {}
		schools.each do |school, loc|
			found = false

			temp.each do |location, list|
				if(location == loc[:location])
					found = true
					temp[location] << school
				end
			end

			if(!found)
			temp[loc[:location]] = [school]
			end
		end
	temp
end





























