Feature: Get list of users
  Background:
    * url 'https://reqres.in/api/'
  Scenario: check get list endpoint

    Given path 'users?page=2'
    When method GET
    Then status 200
    * def expectedSchema =
"""
{
  page: '#number',
  per_page: '#number',
  total: '#number',
  total_pages: '#number',
  data:"#[]",
  support: {
    url: '#string',
    text: '#string'
  }
}
"""
    * def expectedJson = read('classpath:schema/getListJSONSchema.json')
    * match response == expectedSchema




