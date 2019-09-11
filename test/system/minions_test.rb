require "application_system_test_case"

class MinionsTest < ApplicationSystemTestCase
  setup do
    @minion = minions(:one)
  end

  test "visiting the index" do
    visit minions_url
    assert_selector "h1", text: "Minions"
  end

  test "creating a Minion" do
    visit minions_url
    click_on "New Minion"

    fill_in "Description", with: @minion.description
    fill_in "Name", with: @minion.name
    fill_in "Super villain", with: @minion.super_villain_id
    click_on "Create Minion"

    assert_text "Minion was successfully created"
    click_on "Back"
  end

  test "updating a Minion" do
    visit minions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @minion.description
    fill_in "Name", with: @minion.name
    fill_in "Super villain", with: @minion.super_villain_id
    click_on "Update Minion"

    assert_text "Minion was successfully updated"
    click_on "Back"
  end

  test "destroying a Minion" do
    visit minions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Minion was successfully destroyed"
  end
end
