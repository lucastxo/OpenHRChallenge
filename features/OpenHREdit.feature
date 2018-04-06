@EditEmployee
Feature:OpenHR Employee Edit
In order to edit an employee in the OpenHR page we have to access the employee list

Scenario:Access the Employee list page
Given I am in the OpenHR principal page
When I select the PIM option in Menu
And select the employee list button
Then the Employee list page should open

Scenario:Open Employee register
Given I am in the employee list
When Fill the fields click search and select the data
Then the employee register should open

Scenario:Edit Employee
Given that I am in the employee register
When I Click on the edit Button
And fill the fields
And click the save button
Then sucess message should appear