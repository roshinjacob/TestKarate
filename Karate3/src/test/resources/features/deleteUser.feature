Feature: Delete an existing resource
@ignore
  Scenario: Delete a user by ID
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method delete
    Then status 200
