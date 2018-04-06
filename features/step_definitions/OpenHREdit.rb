#Scenario:Access the Employee list page
Given("I am in the OpenHR principal page") do
   assert_text('Welcome Admin')
end

When("I select the PIM option in Menu") do
   find('#menu_pim_viewPimModule').click
end

When("select the employee list button") do
   find('#menu_pim_viewEmployeeList').click
end

Then("the Employee list page should open") do
   assert_text('Employee Name')
end

#Scenario:Open Employee register
Given("I am in the employee list") do
   assert_text('Employee Name')
end
  
When("Fill the fields click search and select the data") do
   fill_in('empsearch_employee_name_empName', :with => 'Test Cucumber Test')
   click_button(id:'searchBtn')
   click_link('Test Cucumber')
end
Then("the employee register should open") do
   assert_text('Personal Details')
end
#Scenario:Edit Employee
Given("that I am in the employee register") do
    assert_text('Personal Details')
end
  
When("I Click on the edit Button") do
   click_button(id:'btnSave')
end
  
When("fill the fields") do
   fill_in('personal_txtLicenNo', :with => '123456789')
   fill_in('personal_txtLicExpDate', :with => '2012-08-25')
   choose('personal_optGender_1')
end
  
When("click the save button") do
   click_button(id:'btnSave')
end
  
Then("sucess message should appear") do
   assert_text('Successfully')
end