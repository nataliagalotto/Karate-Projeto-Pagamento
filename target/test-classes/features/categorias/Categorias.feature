Feature: Teste Categorias
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

  Scenario: List categorias
    Given   path 'categorias/1'
    When method get
    Then status 200
    And match response ==  read( 'categorias.json')
