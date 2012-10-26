# Lets look at yield

def keith
  yield
end

keith(){ puts 'here is my block' }
