#Autor: Andres Sanchez


Feature: consulta de usuarios a traves del metodo Get
    yo como usuario consumo un servicio para conocer los usuarios

    Scenario: consultar usuario
      * def jsonResponse = read('../json/lista_de_usuarios.json')
      Given url "https://reqres.in" + "/api/users" + "/2"
      When method get
      Then status 200
      And match $ == jsonResponse
