# your code goes here

def begins_with_r(words)
    words.all? {|x| x[0] == "r".downcase }
end

def contain_a(words)
    words.select { |x| x.include?("a") }
end

def first_wa(words)
    words.find { |x| x[0..1] == "wa" }
end


def remove_non_strings(words)
  words.delete_if { |x| x.class != "".class }
end



def count_elements(words)
    hash = {}
    words.uniq.map do |x|
        hash = { :count => words.count(element),    }
    end
end