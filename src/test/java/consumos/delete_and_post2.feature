#Autor: Andres Sanchez
Feature: creacion de usuarios a traves del metodo post
  yo como usuario consumo un servicio con karate

  Scenario: crear usuario
    * call read("/post_and_delete.feature@Create")
    Given url "https://reqres.in/api/users/" + contactId
    When method delete
    Then status 204
