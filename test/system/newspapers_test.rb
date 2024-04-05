require "application_system_test_case"

class NewspapersTest < ApplicationSystemTestCase
  setup do
    @newspaper = newspapers(:one)
  end

  test "visiting the index" do
    visit newspapers_url
    assert_selector "h1", text: "Newspapers"
  end

  test "should create newspaper" do
    visit newspapers_url
    click_on "New newspaper"

    fill_in "Name", with: @newspaper.name
    click_on "Create Newspaper"

    assert_text "Newspaper was successfully created"
    click_on "Back"
  end

  test "should update Newspaper" do
    visit newspaper_url(@newspaper)
    click_on "Edit this newspaper", match: :first

    fill_in "Name", with: @newspaper.name
    click_on "Update Newspaper"

    assert_text "Newspaper was successfully updated"
    click_on "Back"
  end

  test "should destroy Newspaper" do
    visit newspaper_url(@newspaper)
    click_on "Destroy this newspaper", match: :first

    assert_text "Newspaper was successfully destroyed"
  end
end
