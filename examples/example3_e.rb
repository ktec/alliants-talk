# Lets look at yield

def keith
  yield
end

keith() do
  puts "here is my wordy block"
end

