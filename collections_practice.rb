require 'pry'

def begins_with_r(tools)
  tools.all? { |word| word[0] == "r".downcase}
end

def contain_a(tools)
  tools.select { |word| word.include?("a") }
end

def first_wa(tools)
  tools.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(tools)
  tools.delete_if { |element| element.class != "".class}
end

def count_elements(tools)
    hash = {}
    tools.uniq.map do |element|
      hash = { :count => tools.count(element), element.keys[0] => element.values[0] }
    end
end

def merge_data keys, data
  return keys[0].merge(data[0].values[0]), keys[1].merge(data[0].values[1])
end

def find_cool array
  array.select { |element| element.values[1] == "cool" }
end

def organize_schools schools
  organized_schools = Hash.new
  schools.map do |school, location_hash|
    location_hash.map do |location, city|
      if organized_schools[city] == nil
        organized_schools[city] = [school]
      else
        organized_schools[city] << school
      end
    end
  end
  return organized_schools
end