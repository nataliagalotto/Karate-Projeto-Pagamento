Feature: Teste Clientes
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

  Scenario: List clientes
    Given   path 'clientes/1'
    When method get
    Then status 200
    And match  response == read('clientes.json')


