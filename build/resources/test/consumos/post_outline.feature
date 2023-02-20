#Autor: Andres Sanchez


Feature: consulta de usuarios a traves del metodo Get
  yo como usuario consumo un servicio para conocer los usuarios

  Scenario Outline: crear usuario
    * def baseUrl = "#(base)"
    * def endpointUrl = "#(endpoint)"

    Given url base + endpoint
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201

    Examples:
      | base              | endpoint   |
      | https://reqres.in | /api/users |
