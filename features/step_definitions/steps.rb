# features/step_definitions/steps.rb
require 'httparty'
require 'rspec'


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

When("I call the users endpoint") do
  @response = HTTParty.get('https://reqres.in/api/users?page=2')
  puts @response
end

Then("the response code should be {int}") do |status_code|
  expect(@response.code).to eq(status_code)
end

Then("print the response data") do
  @response_data = JSON.parse(@response.body)
  puts @response_data
end

Then("I verify the email returned is {string}") do |expected_email|
  response_data = JSON.parse(@response.body)
  emails = response_data["data"].map { |user| user["email"] }
  expect(emails).to include(expected_email)
end