
Before('@smoke') do |scenario|
  p "Printing before smoke hook"
  xenv = ENV['xdev']
  $cust = Customer.new(xenv)
end

Before('@regression') do |scenario|
  p "Printing before regression hook"
  xenv = ENV['xqa']
  $cust = Customer.new(xenv)
end