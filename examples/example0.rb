x = "hello world"

ablock = Proc.new { puts x }

def aMethod( arg )
  x = "goodbye"
  arg.call
end

puts x
ablock.call
aMethod( ablock )
ablock.call
puts x

# What will the output be?
