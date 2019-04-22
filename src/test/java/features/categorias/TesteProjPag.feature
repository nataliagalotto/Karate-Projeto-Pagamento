Feature: check returned products by the API
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'
  Scenario: List categorias
    Given   path 'categorias/1'
    When method get
    Then status 200
    And match response contains {"id": 1,"nome": "Informática","produtos": [{"id": 1,"nome": "Computador","preco": 2000},{"id": 2,"nome": "Impressora","preco": 800},{"id": 3,"nome": "Mouse","preco": 80}]}