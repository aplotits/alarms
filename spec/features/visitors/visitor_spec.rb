require 'rails_helper'

RSpec.feature "Visitors", :type => :feature do
  scenario "Create a visitor" do
    visit "visitors"

    click_link "New Visitor"
    expect(page).to have_text("New Visitor")
    
    fill_in "Name", :with => "new"
    fill_in "Login", :with => "newlogin"
    click_button "Create Visitor"
    expect(page).to have_text("Visitor was successfully created.")
  end
  
  scenario "Back Link" do
    visit "visitors"

    click_link "New Visitor"
    expect(page).to have_text("New Visitor")
    
    fill_in "Name", :with => "new"
    fill_in "Login", :with => "newlogin"
    click_button "Create Visitor"
    expect(page).to have_text("Visitor was successfully created.")
    click_link "Back"
    expect(page).to have_text("Visitors")
  end
  
end
