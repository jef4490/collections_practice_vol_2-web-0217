require 'pry'

def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(array)
  array.select {|word| word.include? "a" }
end

def first_wa(array)
  array.find {|word| word[0] == "w" && word[1] == "a"}
end

def remove_non_strings(array)
  array.select {|element| (element.is_a? String)}
end

def count_elements(array)
  count_hash = {}
  count_array = []
  array.each do |element|
    if count_hash[element] == nil
      count_hash[element] = 1
    else count_hash[element] += 1
    end
  end
  count_hash.each do |key, value|
    key[:count] = value
    count_array.push(key)
  end
  count_array
end

def merge_data(keys, data)
  individual_hash = keys.each do |first_name, value|
    {first_name => value}
  end
  more_data = data[0].values
  counter = 0
  more_data.each do |indie_hash|
    indie_hash.each do |attribute, much|
      individual_hash[counter][attribute] = much
    end
    counter += 1
  end
  individual_hash
end

def find_cool(array)
  array.select do |hash|
    (hash.values).include?("cool")
  end
end

def organize_schools(schools)
  org_schools = {}
  schools.each do |name, loc_hash|
    #binding.pry
    if org_schools[loc_hash[:location]] == nil
      org_schools[loc_hash[:location]] = [name]
    else
      org_schools[loc_hash[:location]].push(name)
    end
  end
  org_schools
end
