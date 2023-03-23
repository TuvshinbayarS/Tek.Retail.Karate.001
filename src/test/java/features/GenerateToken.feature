Feature: Token Generator Feature for TEK Insurance API

  @token
  Scenario: Generate Token
    Given url urlRetail
    * path "/auth/login"
    * request {"email":"tuvshinbayar.surenkhorloo@tekschool.us","password":"Example123456"}
    * method post
    * status 200
    * print response
    * print response.accessToken
