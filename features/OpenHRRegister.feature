@RegisterEmployee
Feature:OpenHR Employee Register
In order to Register an Employee in the OpenHR page we have to enter access the registration Page

Scenario:Access the add Employee page
Given I am in the OpenHR main page
When I select the PIM Menu
And select the Add employee button
Then the Employee registration page should open

Scenario:Register an Employee
Given that I am in the Employee registration page
When I Fill the necessary data
And Press Save
Then the record will be saved