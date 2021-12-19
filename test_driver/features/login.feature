Feature: Login Feature
    Login for registered users
    Scenario 1 : User can successfully login
        Given I am on login page
        When I give a valid "emailTextField" and "passwordTextField"
        When I click on "loginButton"
        Then I will successfully login to the app

    Scenario 2 : User can not login due to wrong email or password
        Given I am on login page
        And I give a wrong email and/or password
        When I click on Login button
        Then I will get an error message as "Login failed, Incorrect credentials"

    Scenario 3 : User can not login due to invalid email
        Given I am on login page
        And I give an invalid email
        When I click on Login button
        Then I will get an error under the email field as "Invalid email."

    Scenario 4 : User can not login due to invalid password
        Given I am on login page
        And I give an invalid  password
        When I click on Login button
        Then I will get an error under the password field as "Invalid password, password must be at least 6 digit."