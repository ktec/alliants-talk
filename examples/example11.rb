# so now this shouldn't seem quite so cryptic

(1..1000).inject { |sum, n| sum + n }

(1..1000).inject(&:+) # using the Symbol#to_proc syntax that’s been available since Ruby 1.8.7

(1..1000).inject(:+) # Or even just passing a symbol directly

