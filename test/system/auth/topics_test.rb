require "application_system_test_case"

class Auth::TopicsTest < ApplicationSystemTestCase
  setup do
    @auth_topic = auth_topics(:one)
  end

  test "visiting the index" do
    visit auth_topics_url
    assert_selector "h1", text: "Auth/Topics"
  end

  test "creating a Topic" do
    visit auth_topics_url
    click_on "New Auth/Topic"

    fill_in "Title", with: @auth_topic.title
    click_on "Create Topic"

    assert_text "Topic was successfully created"
    click_on "Back"
  end

  test "updating a Topic" do
    visit auth_topics_url
    click_on "Edit", match: :first

    fill_in "Title", with: @auth_topic.title
    click_on "Update Topic"

    assert_text "Topic was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic" do
    visit auth_topics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic was successfully destroyed"
  end
end
