require "application_system_test_case"

class InternsTest < ApplicationSystemTestCase
  setup do
    @intern = interns(:one)
  end

  test "visiting the index" do
    visit interns_url
    assert_selector "h1", text: "Interns"
  end

  test "creating a Intern" do
    visit interns_url
    click_on "New Intern"

    fill_in "Age", with: @intern.age
    fill_in "Defect", with: @intern.defect
    fill_in "Description", with: @intern.description
    fill_in "Quality", with: @intern.quality
    fill_in "Telephone", with: @intern.telephone
    click_on "Create Intern"

    assert_text "Intern was successfully created"
    click_on "Back"
  end

  test "updating a Intern" do
    visit interns_url
    click_on "Edit", match: :first

    fill_in "Age", with: @intern.age
    fill_in "Defect", with: @intern.defect
    fill_in "Description", with: @intern.description
    fill_in "Quality", with: @intern.quality
    fill_in "Telephone", with: @intern.telephone
    click_on "Update Intern"

    assert_text "Intern was successfully updated"
    click_on "Back"
  end

  test "destroying a Intern" do
    visit interns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intern was successfully destroyed"
  end
end
