Feature: Teste Pedidos
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

  Scenario: List Pedidos
    Given   path 'pedidos/1'
    When method get
    Then status 200
    And match  response == read('pedidos.json')


