# features/step_definitions/steps.rb

Given("this will pass") do
  @this_will_pass = true
end

Given("this will fail") do
  @this_will_pass = false
end

When("I do an action") do
end

Then("some results should be there") do
  expect(@this_will_pass)
end

Given("I click on given") do
  p "Given statement executed"
  $cust.get_request
end

When("I click on when") do
  p "When statement executed"
end

Then("I see some results") do
  p "I see some results"
end