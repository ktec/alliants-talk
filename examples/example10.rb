# Yield with params...
class Array
  def uniq_with_occurance
    self.uniq.each do |element|
      yield(element,self.count(element))
    end
  end
end

my_array = [
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

my_array.uniq_with_occurance do |element,occurance|
  puts "#{element[:name]} occurs #{occurance} times"
end
