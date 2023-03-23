@completeTest
Feature: TEK Retail API Post Add Address request

  Background: 
    Given url urlRetail
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.accessToken
    * header x-access-token = token

  @postAddress
  Scenario: Post Add new address
    * path "/address"
    * def generator = Java.type("retailTest.api.DataGenerator")
    * def fullName = generator.getFullName()
    * def phoneNumber = generator.getPhoneNumber()
    * def streetAddress = generator.getAddress()
    * def apt = generator.getApt()
    * def city = generator.getCity()
    * def state = generator.getState()
    * def zipCode = generator.getZipCode()
    * request
      """
      { 
      "country": "United States",
      "fullName": "#(fullName)",
      "phoneNumber": "#(phoneNumber)",
      "street": "#(streetAddress)",
      "apartment": "#(apt)",
      "city": "#(city)",
      "state": "#(state)",
      "zipCode": "#(zipCode)"
       }
      """
    * method post
    * status 200
    * print response

 
   Scenario: get all Addresses
    * path "/address/"
    * method get
    * status 200
    * print response
    * print response[0].id
    * karate.write(response,'address.json')
  Scenario: Update an address
    * def addressID = read('file:./target/address.json')
    * def id = addressID[0].id
    * path "/address/" + id
    * def requestbody = read('request.json')
    * request requestbody
    * method put
    * print response
  Scenario: Delete All Address
    * def addressID = read('file:./target/address.json')
    * def id = addressID[0].id
    * path "/address/" + id
    * method delete
    * print response
