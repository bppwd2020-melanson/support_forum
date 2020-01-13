require 'test_helper'

class Auth::TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_topic = auth_topics(:one)
  end

  test "should get index" do
    get auth_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_topic_url
    assert_response :success
  end

  test "should create auth_topic" do
    assert_difference('Auth::Topic.count') do
      post auth_topics_url, params: { auth_topic: { title: @auth_topic.title } }
    end

    assert_redirected_to auth_topic_url(Auth::Topic.last)
  end

  test "should show auth_topic" do
    get auth_topic_url(@auth_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_topic_url(@auth_topic)
    assert_response :success
  end

  test "should update auth_topic" do
    patch auth_topic_url(@auth_topic), params: { auth_topic: { title: @auth_topic.title } }
    assert_redirected_to auth_topic_url(@auth_topic)
  end

  test "should destroy auth_topic" do
    assert_difference('Auth::Topic.count', -1) do
      delete auth_topic_url(@auth_topic)
    end

    assert_redirected_to auth_topics_url
  end
end
