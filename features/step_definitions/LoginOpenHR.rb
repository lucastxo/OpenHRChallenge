#Scenario:Login in the OpenHR page
Given("I am on the OpenHR Page") do
    visit('http://opensource.demo.orangehrmlive.com/')
  end
  
  When("I enter the required data") do
    fill_in('txtUsername', :with => 'admin')
    fill_in('txtPassword', :with => 'admin')
  end
  
  When("Press login Button") do
    click_button(id:'btnLogin')
  end
  
  Then("the main page should Appear") do
    if assert_text('Welcome Admin')
      puts "Successful Login"
    else
      puts "Failed Login"
    end  
end