#Autor: Andres Sanchez

@Put
Feature: consulta de usuarios a traves del metodo Get
  yo como usuario consumo un servicio para conocer los usuarios

  Scenario: modificar datos
    Given url "https://reqres.in" + "/api/users" + "/2"
    And request {"name": "morpheus","job": "zion residen"}
    When method put
    Then status 200