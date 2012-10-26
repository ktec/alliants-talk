# Yield with params...

def each_with_age(array)
  array.each do |element|
    yield(element,element[:age])
  end
end

array = [
  { age:34 },
  { age:22 },
  { age:19 },
  { age:24 }
]

each_with_age(array) do |element,age|
  puts "#{age}"
end
