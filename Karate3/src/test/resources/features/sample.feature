Feature: Sample feature test

  Scenario: test API response
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    When method get
    Then status 200
    And match response.id == 1