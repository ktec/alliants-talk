
def method3(arg1,arg2)
  puts arg1
  yield
  puts arg2
end


method3("<strong>","</strong>"){ "lovely" }
