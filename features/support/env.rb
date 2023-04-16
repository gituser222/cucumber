
Before('@smoke') do |scenario|
  puts "Printing before smoke hook"
  x-env = ENV['x-dev']
  $cust = Customer.new(x-env)
end

Before('@regression') do |scenario|
  puts "Printing before regression hook"
  x - env = ENV['x-qa']
  $cust = Customer.new(x-env)
end