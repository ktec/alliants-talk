def foo( b )
  puts 'def foo'
  if block_given?
    puts '(Block passed to foo)'
    yield('y foo arg')
  else
    puts '(No block passed to foo)'
  end
end

def bar
  puts 'def bar'
  if block_given?
    puts '(Block passed to bar)'
    yield('y bar arg')
  else
    puts '(No block passed to bar)'
  end
end

puts '====== Test 1: foo bar do |s| puts(e) end'
foo bar do |s| puts(s) end
# foo(bar) do |s| puts(s) end

puts '====== Test 2: foo bar {  |s| puts(e) }'
foo bar {  |s| puts(s) }
# foo( bar{|s| puts(s) } )
