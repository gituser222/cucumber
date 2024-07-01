Feature: https://reqres.in/api/users

    @smoke
    Scenario: Call request
      When I call the users endpoint
      Then the response code should be 200
      Then print the response data
      Then I verify the email returned is "michael.lawson@reqres.in"
