Feature: Update user details

Scenario: Update a user by ID
Given url 'https://jsonplaceholder.typicode.com/users/1'
And request { "name": "Jane Doe", "email": "janedoe@example.com" }
When method put
Then status 200
And match response.name == "Jane Doe"
And match response.email == "janedoe@example.com"