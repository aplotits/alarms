require 'rails_helper'

RSpec.feature "Alarms", :type => :feature do
  scenario "Create an alarm" do
    visit "alarms"
    click_link "New Alarm"
    expect(page).to have_text("New Alarm") 
    fill_in "Content", :with => "123"
    # fill_in "alarm_visitor_id", :with => 1
    # select('1', :from => 'alarm_visitor_id')
    # find("input[id='alarm_visitor_id']").set "1".to_i
    fill_in "Visitor", :with => "1"
    fill_in "Vote", :with => 1
    click_button "Create Alarm"
    expect(page).to have_text("Alarm was successfully created.")
   end 
    
  scenario "Create an alarm with more than 5 characters" do
    visit "alarms"
    click_link "New Alarm"
    expect(page).to have_text("New Alarm")
    fill_in "Content", :with => "123456"
    fill_in "Visitor", :with => "1"
    fill_in "Vote", :with => 1
    click_button "Create Alarm"
    expect(page).to have_text("Content is too long (maximum is 5 characters)")
  end

  scenario "Test Edit Link" do
    visit "alarms"
    click_link "New Alarm"
    expect(page).to have_text("New Alarm")
    fill_in "Content", :with => "1234"
    fill_in "Visitor", :with => "1"
    fill_in "Vote", :with => 1
    click_button "Create Alarm"
    expect(page).to have_text("Alarm was successfully created.")
    click_link("Edit")
    expect(page).to have_text("Editing Alarm")
  end

  scenario "Test Back Link" do
    visit "alarms"
    click_link "New Alarm"
    expect(page).to have_text("New Alarm")
    fill_in "Content", :with => "1234"
    fill_in "Visitor", :with => "1"
    fill_in "Vote", :with => 1
    click_button "Create Alarm"
    expect(page).to have_text("Alarm was successfully created.")
    click_link("Back")
    expect(page).to have_text("Alarms")
  end

    
end
