#Autor: Andres Sanchez
Feature: creacion de usuarios a traves del metodo post
  yo como usuario consumo un servicio con karate
  @Create
  Scenario: crear usuario
    Given url "https://reqres.in/api/users"
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201
    And def contactId = $.id
