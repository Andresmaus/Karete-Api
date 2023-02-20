#Autor: Andres Sanchez


Feature: consulta de usuarios a traves del metodo Get
    yo como usuario consumo un servicio para conocer los usuarios

    Scenario: consultar usuario
      * def jsonResponse = read('../json/lista_de_usuarios.json')
      Given url "https://reqres.in" + "/api/users" + "/2"
      When method get
      Then status 200
      And match $ == {"data":{"id":3,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
