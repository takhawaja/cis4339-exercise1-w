require "application_system_test_case"

class SuperVillainsTest < ApplicationSystemTestCase
  setup do
    @super_villain = super_villains(:one)
  end

  test "visiting the index" do
    visit super_villains_url
    assert_selector "h1", text: "Super Villains"
  end

  test "creating a Super villain" do
    visit super_villains_url
    click_on "New Super Villain"

    fill_in "Description", with: @super_villain.description
    fill_in "Name", with: @super_villain.name
    click_on "Create Super villain"

    assert_text "Super villain was successfully created"
    click_on "Back"
  end

  test "updating a Super villain" do
    visit super_villains_url
    click_on "Edit", match: :first

    fill_in "Description", with: @super_villain.description
    fill_in "Name", with: @super_villain.name
    click_on "Update Super villain"

    assert_text "Super villain was successfully updated"
    click_on "Back"
  end

  test "destroying a Super villain" do
    visit super_villains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Super villain was successfully destroyed"
  end
end
