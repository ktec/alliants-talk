
def method3(arg1,arg2)
  puts arg1
  yield arg2
end

method3("<strong>","</strong>") do |x|
  puts "lovely" + x
end
