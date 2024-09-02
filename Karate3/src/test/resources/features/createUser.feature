Feature: create new User

  Scenario: Create a new user
    Given url 'https://jsonplaceholder.typicode.com/users/'
    And request {"name": "john", "email": "abc@gmail.com"}
    When method post
    Then status 201
    And match response.name == "john"
    And match response.email == "abc@gmail.com"