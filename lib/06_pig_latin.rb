def translate_one(s)
  if s[0] =~ /[^aeiouyAEIOUY]/ && s[1] =~ /[qQ]/ && s[2] =~ /[uU]/
    s[3..-1] + s[0..2] + "ay"
  elsif s[0] =~ /[^aeiouyAEIOUY]/ && s[1] =~ /[^aeiouyAEIOUY]/ && s[2] =~ /[^aeiouyAEIOUY]/ 
    s[3..-1] + s[0..2] + "ay"
  elsif s[0] =~ /[qQ]/ && s[1] =~ /[uU]/ 
    s[2..-1] + s[0..1] + "ay"
  elsif s[0] =~ /[^aeiouyAEIOUY]/ && s[1] =~ /[^aeiouyAEIOUY]/ 
    s[2..-1] + s[0..1] + "ay"
  elsif s[0] =~ /[^aeiouyAEIOUY]/
    s[1..-1] + s[0] + "ay"
  elsif s.include?("qu")
    s["qu"..-1] + s[0] + "ay"
  elsif s[0] =~ /[aeiouyAEIOUY]/
    s + "ay"
  end
end

def two_words(s)
  s.split.map{|x| x=translate_one(x)}.join(" ")
end

def translate(s)
  if s.split.length ==1
    translate_one(s)
  elsif s.split.length >= 2
    two_words(s)
  end 
end
translate("apple")