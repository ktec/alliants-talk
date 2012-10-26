# and just for fun...

def fibs(x)
  a = b = 1
  x.times{yield a; a,b = b,a+b}
end

fibs(10){|fib| puts fib}
