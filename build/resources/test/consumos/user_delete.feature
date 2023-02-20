#Autor: Andres Sanchez


Feature: consulta de usuarios a traves del metodo Get
  yo como usuario consumo un servicio para conocer los usuarios


  Scenario: eliminar datos
    Given url "https://reqres.in" + "/api/users" + "/2"
    When method delete
    Then status 204