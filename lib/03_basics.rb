def who_is_bigger(a, b, c)
  if (a == nil || b == nil || c == nil)
    return "nil detected"
  elsif a == [a,b,c].max
    return "a is bigger"
  elsif b == [a,b,c].max
    return "b is bigger"
  else c == [a,b,c].max
    return "c is bigger"
  end
end
who_is_bigger(0,0,0)


def reverse_upcase_noLTA(s)
  s.reverse.upcase.delete("LTA")
end 
reverse_upcase_noLTA("")

def array_42(array)
  array.include?(42) 
end 
array_42([])

def magic_array(array)
  return array.flatten.sort.uniq.map{|n| n*2}.delete_if{|n| n%3 ==0}
end 
magic_array([1,3,5,6,3])