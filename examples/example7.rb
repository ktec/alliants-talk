# Yield with params...

def each_with_name_and_age(array)
  array.each do |element|
    yield(element[:name],element[:age])
  end
end

array = [
  { name:"keith", age:34 },
  { name:"brad", age:22 },
  { name:"jin", age:19 },
  { name:"chris", age:24 }
]

each_with_name_and_age(array) do |name,age|
  puts "#{name} is #{age}"
end
