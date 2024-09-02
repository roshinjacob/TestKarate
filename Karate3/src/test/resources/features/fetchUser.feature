Feature: Read user details

  Scenario: Read User details
  Given url 'https://jsonplaceholder.typicode.com/users/11'
    When method GET
    Then status 200
    And match response.name == 'john'
