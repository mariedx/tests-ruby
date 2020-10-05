def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n=2)
  return s + (" " + s) * (n-1)
end

def start_of_word(s, n)
  return s[0..n-1]
end

def first_word(s)
  return s.split.first
end 

def titleize(s)
  p = s.split.map{|x| x.length > 3? x.capitalize : x}
  p[0] = p[0].capitalize
  p.join(" ")
end



