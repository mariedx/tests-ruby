def add(a,b)
  a+b
end 
add(0,0)


def subtract(a,b)
  a-b
end 
subtract(0,0)


def sum(array)
  array.sum
end
sum([])


def multiply(a,b)
  a*b
end 
multiply(0,0)


def power(a,b)
  a**b
end 
power(0,0)


def factorial(number)
  if number == 0
    return 1
  else  
    return number * factorial(number-1)
  end
end
factorial(2)



