def begins_with_r(array)
    array.map {|word| word.start_with?("r")}.all?
end

def contain_a(array)
    array.map {|word| word if word.include?("a")}.compact
end

def first_wa(array)
    array.each {|word| return word if word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
    array.map {|element| element if element.is_a?(String)}.compact
end

def count_elements(array)
    array.group_by{|name| name[:name]}.map {|k,v| {:count => v.size, :name => k}}
end

def merge_data(array1, array2)
    array2[0].map do |name, hash2|
        new_hash = {}
        array1.each do |hash1|
            new_hash = hash2.merge(hash1) if hash1[:first_name] == name
        end
        new_hash
    end
end

def find_cool(array)
    array.map.with_index do |hash, index|
        if array[index][:temperature] == "cool"
            hash
        end
    end.compact
end

def organize_schools(hash)
    hash.group_by {|k,v| v[:location]}.each do |school, location|
        new_services = []
        location.each {|schools| new_services << schools.first }
        organized_schools = {school => new_services}
    end
    organized_schools
end
