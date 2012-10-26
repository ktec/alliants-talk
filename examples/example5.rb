
def method4(arg)
  puts "here I'd like to introduce #{yield(arg)}"
end

def method5(arg)
  yield(arg)
  puts "here I'd like to introduce"
end

def method6(arg)
  puts "here I'd like to introduce"
  yield(arg)
end

puts "Method4:"
method4('keith'){ |who| puts who }
puts "----"
puts "Method5:"
method5('brad'){ |who| puts who }
puts "----"
puts "Method6:"
method6('jin'){ |who| puts who }
