require 'spec_helper'

describe "Creating restaurants" do 
  def create_restaurant(options={})
    options[:name] ||= "Restaurant"
    options[:description] ||= "This is my restaurant"
    options[:address] ||= "Restaurant"
    options[:city] ||= "This is my restaurant"
    options[:state] ||= "Restaurant"
    options[:zipcode] ||= "This is my restaurant"
    options[:phone_number] ||= "Restaurant"

    visit new_restaurant_path
    expect(page).to have_content("Add New Restaurant")

    fill_in "Name",           with: options[:name]
    fill_in "Street Address", with: options[:address]
    fill_in "City",           with: options[:city]
    fill_in "State",          with: options[:state]
    fill_in "Zip Code",       with: options[:zipcode]
    fill_in "Phone Number",   with: options[:phone_number]
    fill_in "Description",    with: options[:description]

    click_button "Save"
  end

  it "redirects to the root path on success" do 
    create_restaurant
    expect(page).to have_content("Your restaurant has been uploaded.")
  end

  it "displays an error when the restaurant has no title" do 
    create_restaurant name: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no address" do 
    create_restaurant address: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no city" do 
    create_restaurant city: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no state" do 
    create_restaurant state: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no zipcode" do 
    create_restaurant zipcode: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no phone_number" do 
    create_restaurant phone_number: ""
    expect(page).to have_content("error")
  end

  it "displays an error when the restaurant has no description" do 
    create_restaurant description: ""
    expect(page).to have_content("error")
  end
end












































