#Autor: Andres Sanchez


Feature: consulta de usuarios a traves del metodo Get
  yo como usuario consumo un servicio para conocer los usuarios


  Scenario: crear usuario
    Given url "https://reqres.in" + "/api/users"
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201