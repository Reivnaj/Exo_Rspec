def add(n1,n2)
  return n1+n2
end

def subtract(n1,n2)
  return n1-n2
end

def sum(array)
  return array.sum
end

def multiply(n1,n2)
  return n1*n2
end

def power(n1, n2)
  return n1 **n2
end

def factorial(n)
  # n! = n*(n-1)*n-2*n-3*...*2*1
  result = 1
  if n !=0
    n.times do |i|
      result = result * (i+1)
    end
  end
  return result
end
