Feature: TEK Retail API Post Add Address request

  @addPayment
  Scenario: Post Add new address
    Given url urlRetail
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.accessToken
    * header x-access-token = token
    * path "/payment"
    * def generator = Java.type("retailTest.api.DataGenerator")
    * def cardNumber = generator.getCardNumber()
    * def nameOnCard = generator.getFullName()
    * def expirationMonth = generator.getExpirationMonth()
    * def expirationYear = generator.getExpirationYear()
    * def cvc = generator.getCVC()
    * request
      """
      {
      "cardNumber": "#(cardNumber)",
      "nameOnCard": "#(nameOnCard)",
      "expirationMonth": "#(expirationMonth)",
      "expirationYear": "#(expirationYear)" ,
      "securityCode": "#(cvc)"
      }
      """
    * method post
    * status 200
    * print response
