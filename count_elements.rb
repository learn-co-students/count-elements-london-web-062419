require 'pry'

def count_elements(array)
  # code goes here
# counter = 0
# new_hash = {}
# instead of setting a new hash I used the Hash.new method and inject enumerator.
new_hash = array.inject(Hash.new(0)) {|hash, arr_element| hash[arr_element] +=1; hash}

# this should work in ruby 2.7
# new_hash = array.tally

#this works aswell
Hash[array.group_by{|key| key}.map{|k,count| [k, count.size] }]


# binding.pry


end
 