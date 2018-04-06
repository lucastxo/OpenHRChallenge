#Scenario:Access the add Employee page
Given("I am in the OpenHR main page") do
  assert_text('Welcome Admin')
end
  
When("I select the PIM Menu") do
  find('#menu_pim_viewPimModule').click
end
  
When("select the Add employee button") do
  find('#menu_pim_addEmployee').click
end
  
Then("the Employee registration page should open") do
  assert_text('Full Name')
end

#Scenario:Register an Employee
Given("that I am in the Employee registration page") do
  assert_text('Full Name')
end
  
When("I Fill the necessary data") do
  fill_in('firstName', :with => 'Test')
  fill_in('middleName', :with => 'Cucumber')
  fill_in('lastName', :with => 'Test')
  attach_file('photofile', 'C:\Projetos\Automation\exemplo.jpg')
  find('#chkLogin').set(true)
    
  #generates a Random Number and concatenate with a text to create userName
  random = rand(10..500)
  userName = "Test" + random.to_s
  fill_in('user_name', :with => userName)
  fill_in('user_password', :with => '123')
  fill_in('re_password', :with => '123') 
end
  
When("Press Save") do
  click_button(id:'btnSave')
end
  
Then("the record will be saved") do
  assert_text('Personal Details')
end