# Yield with params...

def uniq_with_occurance(array)
  array.uniq.each do |element|
    yield(element,array.count(element))
  end
end

array = [
  { name:"keith", age:34 },
  { name:"keith", age:34 },
  { name:"keith", age:34 },
  { name:"keith", age:34 },
  { name:"brad", age:22 },
  { name:"brad", age:22 },
  { name:"jin", age:19 },
  { name:"jin", age:19 },
  { name:"jin", age:19 },
  { name:"chris", age:24 },
  { name:"chris", age:24 },
  { name:"chris", age:24 },
  { name:"chris", age:24 },
  { name:"chris", age:24 },
  { name:"chris", age:24 }
]

uniq_with_occurance(array) do |element,occurance|
  puts "#{element[:name]} occurs #{occurance} times"
end
