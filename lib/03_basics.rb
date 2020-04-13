def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  else
    hash = {a => "a", b => "b", c => "c"}
    result = hash.max_by{|k, v| k}
    return "#{result[1]} is bigger"
  end
end

def reverse_upcase_noLTA(str)
  return str.reverse.upcase.gsub(/[LTA]/,'')
end

def array_42(array)
  if array.count(42) > 0
    return true
  else
    return false
  end
end

def magic_array(array)
# The magic_array function takes an array of number or an array of
# array of number as parameter and return the same array :
# - flattened (i.e. no more arrays in array)
puts array.flatten.inspect
# - sorted
puts array.flatten.sort.inspect
# - with each number multiplicated by 2
puts array.flatten.sort.map {|x| x*2}.inspect
# - with each multiple of 3 removed
puts array.flatten.sort.map {|x| x*2}.keep_if{|x| x%3 !=0}.inspect
# - with each number duplicate removed (any number should appear only once)
puts array.flatten.sort.map {|x| x*2}.keep_if{|x| x%3 !=0}.uniq.inspect
# - sorted
# BONUS : You can do this in one line less than 55 chars
  return array.flatten.sort.map {|x| x*2}.keep_if{|x| x%3 !=0}.uniq
end
